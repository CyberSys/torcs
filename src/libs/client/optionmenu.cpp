/***************************************************************************

    file                 : optionmenu.cpp
    created              : Mon Apr 24 14:22:53 CEST 2000
    copyright            : (C) 2000, 2001 by Eric Espie
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

#include <stdio.h>
#include <tgfclient.h>
#include "optionmenu.h"
#include <graphconfig.h>
#include <simuconfig.h>

static void *optionHandle = NULL;

void *
TorcsOptionOptionInit(void *precMenu)
{
    if (optionHandle) return optionHandle;

    optionHandle = GfuiMenuScreenCreate("OPTIONS");

    GfuiScreenAddBgImg(optionHandle, "data/img/splash-options.png");

    GfuiMenuButtonCreate(optionHandle,
			 "Graphic", "Configure graphic parameters",
			 GraphMenuInit(optionHandle), GfuiScreenActivate);

    GfuiMenuButtonCreate(optionHandle,
			 "Display", "Configure display parameters",
			 GfScrMenuInit(optionHandle), GfuiScreenActivate);

    GfuiMenuButtonCreate(optionHandle,
			 "Simulation", "Configure simulation parameters",
			 SimuMenuInit(optionHandle), GfuiScreenActivate);

    GfuiMenuBackQuitButtonCreate(optionHandle,
				 "Back",
				 "Back to Main",
				 precMenu,
				 GfuiScreenActivate);

    return optionHandle;
}
