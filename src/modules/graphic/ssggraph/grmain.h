/***************************************************************************

    file                 : grmain.h
    created              : Fri Aug 18 00:00:41 CEST 2000
    copyright            : (C) 2000 by Eric Espie
    email                : torcs@free.fr
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

 
#ifndef _GRMAIN_H_
#define _GRMAIN_H_

#include <plib/ssg.h>
#include <graphic.h>

#ifdef WIN32
#include <windows.h>
#include <GL/gl.h>
#include "win32_glext.h"
////// Multitexturing Info
/*typedef void (APIENTRY * PFNGLMULTITEXCOORD2FARBPROC) (GLenum target, GLfloat s, GLfloat t);
typedef void (APIENTRY * PFNGLACTIVETEXTUREARBPROC) (GLenum texture);
typedef void (APIENTRY * PFNGLCLIENTACTIVETEXTUREARBPROC) (GLenum texture);*/
extern PFNGLMULTITEXCOORD2FARBPROC glMultiTexCoord2fARB ;
extern PFNGLMULTITEXCOORD2FVARBPROC glMultiTexCoord2fvARB;
extern PFNGLACTIVETEXTUREARBPROC   glActiveTextureARB ;
extern PFNGLCLIENTACTIVETEXTUREARBPROC glClientActiveTextureARB ;

/*
  PFNGLMULTITEXCOORD2FVARBPROC	glMultiTexCoord2fvARB		= NULL;
  PFNGLACTIVETEXTUREARBPROC		glActiveTextureARB			= NULL;
  PFNGLCLIENTACTIVETEXTUREARBPROC	glClientActiveTextureARB	= NULL;
  
  PFNGLDRAWARRAYSEXTPROC			glDrawArraysEXT				= NULL;
  PFNGLVERTEXPOINTEREXTPROC		glVertexPointerEXT			= NULL;
  PFNGLNORMALPOINTEREXTPROC		glNormalPointerEXT			= NULL;
  PFNGLTEXCOORDPOINTEREXTPROC		glTexCoordPointerEXT		= NULL;
*/
extern bool InStr(char *searchStr, char *str);
#endif
extern bool InitMultiTex();
extern int grWinx, grWiny, grWinw, grWinh;

extern int grDrawCurrent;
extern int grDrawCurrent;
extern int grDebugFlag;
extern int grBoardFlag;
extern int grLeaderFlag;
extern int grLeaderNb;
extern int grCounterFlag;
extern int grGFlag;
extern int grVectFlag;
extern int grVectDispFlag[];
extern int segIndice;

extern double grCurTime;

extern void *grHandle;
extern void *grTrackHandle;

extern ssgContext grContext;
extern int grNbCars;

extern int  initView(int x, int y, int width, int height, int flag, void *screen);
extern int  initCars(tSituation *s);
extern int  refresh(tSituation *s);
extern void shutdownCars(void);
extern int  initTrack(tTrack *track);
extern void shutdownTrack(void);
extern int maxTextureUnits;


#endif /* _GRMAIN_H_ */ 



