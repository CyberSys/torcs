/***************************************************************************

    file                 : pref.h
    created              : Sat Apr 29 16:52:41 CEST 2000
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
 


#ifndef _PREF_H_
#define _PREF_H_


typedef struct {
    char	*name;		/* Name of the control */
    int		type;		/* Type of control (analog, joy button, keyboard) */
    int		val;		/* control index */
    char	*minName;	/* Name of the min attribute */
    float	min;		/* min value for analog control */
    float	minVal;		/* another min value for analog control*/
    char	*maxName;	/* Name of the max attribute */
    float	max;		/* max value for analog control */
    char	*sensName;	/* Name of the sens attribute */
    float	sens;		/* sensitivity of control */
    char	*powName;	/* Name of the pow attribute */
    float	pow;		/* power of curve command = pow(control, power) */
} tControlCmd;

extern void	*PrefHdle;

extern int	Transmission;

extern int	NbPitStopProg;

extern int	ParamAsr;	/* anti-slip accel */
extern int	ParamAbs;	/* anti-lock brake */

extern int	RelButNeutral;
extern int	SeqShftAllowNeutral;

extern tControlCmd CmdControl[];


extern char *Yn[];

#define	CMD_UP_SHFT	0
#define	CMD_DN_SHFT	1
#define	CMD_ASR		2
#define	CMD_ABS		3
#define	CMD_GEAR_R	4
#define	CMD_GEAR_N	5
#define	CMD_GEAR_1	6
#define	CMD_GEAR_2	7
#define	CMD_GEAR_3	8
#define	CMD_GEAR_4	9
#define	CMD_GEAR_5	10
#define	CMD_GEAR_6	11
#define CMD_THROTTLE	12
#define CMD_BRAKE	13
#define CMD_LEFTSTEER	14
#define CMD_RIGHTSTEER	15


#define CMD_TYPE_NOT_AFFECTED	0
#define CMD_TYPE_ANALOG		1
#define CMD_TYPE_JOY_BUT	2
#define CMD_TYPE_KEYBOARD	3
#define CMD_TYPE_MOUSE_BUT	4
#define CMD_TYPE_MOUSE_MOVE	5

extern void HmReadPrefs(int index);


#endif /* _PREF_H_ */ 



