/***************************************************************************

    file                 : trackdesc.cpp
    created              : Tue Oct 9 16:52:00 CET 2001
    copyright            : (C) 2001 by Bernhard Wymann
    email                : berniw@bluewin.ch
    version              : $Id$

 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#include "trackdesc.h"

TrackSegment::TrackSegment()
{
	// nothing so far
}

void TrackSegment::init(int id, const tTrackSeg* s, const t3Dd* lp, const t3Dd* mp, const t3Dd* rp)
{
	/* id of the corresponding segment */
	segID = id;
	/* right, middle and left segment (road) border */
	l.x = lp->x; l.y = lp->y; l.z = lp->z;
	m.x = mp->x; m.y = mp->y; m.z = mp->z;
	r.x = rp->x; r.y = rp->y; r.z = rp->z;

	TrackDesc::dirVector(&r, &l, &tr);
	TrackDesc::normalizeVector(&tr);


	if (s != NULL) {
		type = s->type;
		raceType = s->raceInfo;
		if (type != TR_STR) radius = s->radius; else radius = FLT_MAX;
		kfriction = s->kFriction;
		krollres = s->kRollRes;
		kroughness = s->kRoughness;
		kroughwavelen = s->kRoughWaveLen;
		width = distToLeft3D(&r);
		kalpha = 1.0;

		tdble dz = getRightBorder()->z - getLeftBorder()->z;
		tdble d = getWidth();
		if (type == TR_LFT) {
			if (dz > 0.0) {
				kalpha = 1.0/cos(asin(fabs(dz/d)));
			} else {
				kalpha = 1.0*cos(asin(fabs(dz/d)));
			}
		} else if (type == TR_RGT) {
			if (dz < 0.0) {
				kalpha = 1.0/cos(asin(fabs(dz/d)));
			} else {
				kalpha = 1.0*cos(asin(fabs(dz/d)));
			}
		}
	} else {
		printf("error: TrackSegment::init tTrackSeg* is NULL.\n");
	}
}

TrackSegment::~TrackSegment()
{
	// nothing so far
}

TrackDesc::TrackDesc(const tTrack* track)
{
	tTrackSeg* first = track->seg;
	tTrackSeg* seg = first;
	tdble tracklength = 0.0;
	int nsegments = 0;

	/* compute the length of the track */
	do {
		tracklength += seg->length;
		seg = seg->next;
	} while (seg != first);
	nsegments = (int) floor(tracklength);


	/* allocate memory for the temporary track data */
	nTrackSegments = nsegments;
	ts = new TrackSegment[nTrackSegments];
	torcstrack = (tTrack*) track;

	/* init all the segments of my temporary track description */
	t3Dd l, m, r;
	int currentts = 0;
	double lastseglen = 0.0;
	double curseglen = 0.0;
	seg = (tTrackSeg*) first;

	do {
		if (seg->type == TR_STR) {
			double dxl = (seg->vertex[TR_EL].x - seg->vertex[TR_SL].x) / (seg->length / TRACKRES);
			double dyl = (seg->vertex[TR_EL].y - seg->vertex[TR_SL].y) / (seg->length / TRACKRES);
			double dzl = (seg->vertex[TR_EL].z - seg->vertex[TR_SL].z) / (seg->length / TRACKRES);
			double dxr = (seg->vertex[TR_ER].x - seg->vertex[TR_SR].x) / (seg->length / TRACKRES);
			double dyr = (seg->vertex[TR_ER].y - seg->vertex[TR_SR].y) / (seg->length / TRACKRES);
			double dzr = (seg->vertex[TR_ER].z - seg->vertex[TR_SR].z) / (seg->length / TRACKRES);

			for (int i = 0; curseglen < seg->length && currentts < nTrackSegments; i++) {

				l.x = seg->vertex[TR_SL].x + dxl*curseglen;
				l.y = seg->vertex[TR_SL].y + dyl*curseglen;
				l.z = seg->vertex[TR_SL].z + dzl*curseglen;

				r.x = seg->vertex[TR_SR].x + dxr*curseglen;
				r.y = seg->vertex[TR_SR].y + dyr*curseglen;
				r.z = seg->vertex[TR_SR].z + dzr*curseglen;

				m.x = (l.x + r.x) / 2.0;
				m.y = (l.y + r.y) / 2.0;
				m.z = (l.z + r.z) / 2.0;

				ts[currentts].init(seg->id, seg, &l, &m, &r);
				currentts++;

				lastseglen = curseglen;
				curseglen += TRACKRES;
			}
		} else {
			double dphi = TRACKRES / seg->radius;
			double xc = seg->center.x;
			double yc = seg->center.y;
			double dzl = (seg->vertex[TR_EL].z - seg->vertex[TR_SL].z) / (seg->length / TRACKRES);
			double dzr = (seg->vertex[TR_ER].z - seg->vertex[TR_SR].z) / (seg->length / TRACKRES);

			dphi = (seg->type == TR_LFT) ? dphi : -dphi;
			for (int i = 0; curseglen < seg->length && currentts < nTrackSegments; i++) {
				double phi = curseglen * dphi;
				double cs = cos(phi), ss = sin(phi);
				l.x = seg->vertex[TR_SL].x * cs - seg->vertex[TR_SL].y * ss - xc * cs + yc * ss + xc;
				l.y = seg->vertex[TR_SL].x * ss + seg->vertex[TR_SL].y * cs - xc * ss - yc * cs + yc;
				l.z = seg->vertex[TR_SL].z + dzl*curseglen;

				r.x = seg->vertex[TR_SR].x * cs - seg->vertex[TR_SR].y * ss - xc * cs + yc * ss + xc;
				r.y = seg->vertex[TR_SR].x * ss + seg->vertex[TR_SR].y * cs - xc * ss - yc * cs + yc;
				r.z = seg->vertex[TR_SR].z + dzr*curseglen;

				m.x = (l.x + r.x) / 2.0;
				m.y = (l.y + r.y) / 2.0;
				m.z = (l.z + r.z) / 2.0;

				ts[currentts].init(seg->id, seg, &l, &m, &r);
				currentts++;

				lastseglen = curseglen;
				curseglen += TRACKRES;
			}
		}

		curseglen = TRACKRES - (seg->length - lastseglen);
		lastseglen = curseglen;
		while (curseglen > TRACKRES) {
			curseglen -= TRACKRES;
		}

		seg = seg->next;
	} while ( seg != first);

	if (currentts != nTrackSegments) printf("error: TrackDesc::TrackDesc currentts %d != nTrackSegments %d.\n", currentts, nTrackSegments);

	/* setting up pit and length */
	for (int i = 0; i < nTrackSegments; i++) {
		int j = (i+nTrackSegments-1) % nTrackSegments;
		int k = (i+nTrackSegments+1) % nTrackSegments;
		if ((ts[i].getRaceType() & TR_PITENTRY) && !(ts[j].getRaceType() & TR_PITENTRY)) {
			nPitEntryStart = i;
		}
		if ((ts[i].getRaceType() & TR_PITEXIT) && !(ts[k].getRaceType() & TR_PITEXIT)) {
			nPitExitEnd = i;
		}
		t3Dd* p = ts[k].getMiddle();
		ts[i].setLength(ts[i].distToMiddle2D(p->x, p->y));
	}

	/* init kbeta */
	tdble z0 = 0.0;
	tdble z1 = ts[(nTrackSegments-2) % nTrackSegments].getMiddle()->z;
	tdble z2 = ts[0].getMiddle()->z;
	tdble dz10 = 0.0;
	tdble dz21 = z2 - z1;

	for (int i = 0; i < nTrackSegments; i++) {
		int k = (i+nTrackSegments+2) % nTrackSegments;
		z0 = z1;
		z1 = z2;
		z2 = ts[k].getMiddle()->z;
		dz10 = dz21;
		tdble dz21 = z2 - z1;
		if (dz21 < dz10) {
			tdble tmp = cos(asin(dz10)-asin(dz21));
			tmp *= tmp;
			ts[i].setKbeta(tmp);
		} else {
			ts[i].setKbeta(1.0);
		}
	}
}

TrackDesc::~TrackDesc()
{
	delete [] ts;
}

void TrackDesc::plot(char* filename)
{
	FILE *fd = fopen(filename, "w");
	t3Dd *l, *m, *r;

	/* plot track */
	for (int i = 0; i < getnTrackSegments(); i++) {
		TrackSegment* p = getSegmentPtr(i);
		l = p->getLeftBorder();
		fprintf(fd, "%f\t%f\n", l->x, l->y );
		m = p->getMiddle();
		fprintf(fd, "%f\t%f\n", m->x, m->y );
		r = p->getRightBorder();
		fprintf(fd, "%f\t%f\n", r->x, r->y );
	}

	fclose(fd);
}


/* get the segment on which the car is, searching ALL the segments */
int TrackDesc::getCurrentSegment(tCarElt* car)
{
	tdble d, min = FLT_MAX;
	TrackSegment* ts;
	int minindex = 0;

    for (int i = 0; i < getnTrackSegments(); i++) {
		ts = getSegmentPtr(i);
		d = ts->distToMiddle3D(car->_pos_X, car->_pos_Y, car->_pos_Z);
		if (d < min) {
			min = d;
			minindex = i;
		}
	}
	return minindex;
}


/* get the segment on which the car is, searching from the position of the last call within range */
int TrackDesc::getCurrentSegment(tCarElt* car, int lastId, int range)
{
	int start = -(range / 4);
	int end = range * 3 / 4;
 	tdble d, min = FLT_MAX;
	TrackSegment* ts;
	int minindex = 0;

	for (int i = start; i < end; i++) {
 		int j = (lastId+i+getnTrackSegments()) % getnTrackSegments();
		ts = getSegmentPtr(j);
		d = ts->distToMiddle3D(car->_pos_X, car->_pos_Y, car->_pos_Z);
		if (d < min) {
			min = d;
			minindex = j;
		}
	}
	return minindex;
}


int TrackDesc::getNearestId(t3Dd* p)
{
	tdble tmp, dist = FLT_MAX;
	int minindex = 0;

	for (int i = 0; i < getnTrackSegments(); i++) {
		tmp = getSegmentPtr(i)->distToMiddle3D(p);
		if (tmp < dist) {
			dist = tmp;
			minindex = i;
		}
	}

	return minindex;
}


void TrackDesc::getNormalVector(int i, t3Dd* n)
{
	t3Dd *t1, *t2, *t3;
	t3Dd a, b, c;

	/* get three points */
	t1 = getSegmentPtr((i - 2 + getnTrackSegments()) % getnTrackSegments())->getMiddle();
	t2 = getSegmentPtr(i)->getLeftBorder();
	t3 = getSegmentPtr((i + 2 + getnTrackSegments()) % getnTrackSegments())->getMiddle();

	/* make two vectors out of them */
	dirVector(t1, t2, &a);
	dirVector(t3, t2, &b);

	/* cross(vector) product */
	crossProduct(&a, &b, &c);

	/* normalize */
	normalizeVector(&c);

	n->x = c.x; n->y = c.y; n->z = c.z;
}


