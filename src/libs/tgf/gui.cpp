/***************************************************************************
                               gui.cpp -- gui                   
                             -------------------                                         
    created              : Fri Aug 13 22:01:33 CEST 1999
    copyright            : (C) 1999 by Eric Espie                         
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

/** @file
    		This API is used to manage all the menu screens.
    @author	<a href=mailto:torcs@free.fr>Eric Espie</a>
    @version	$Id$
    @ingroup	gui
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

#include <tgf.h>
#include "gui.h"

tGfuiScreen	*GfuiScreen;	/* current screen */
static int	GfuiMouseVisible = 1;
tMouseInfo	GfuiMouse;

float		GfuiColor[GFUI_COLORNB][4];

static int	ScrW, ScrH, ViewW, ViewH;

static tdble DelayRepeat;
static double LastTimeClick;
#define REPEAT1	1.0
#define REPEAT2 0.2

static void
gfuiColorInit(void)
{
    char buf[256];
    void *hdle;
    int  i, j;
    char *rgba[4] = {GFSCR_ATTR_RED, GFSCR_ATTR_GREEN, GFSCR_ATTR_BLUE, GFSCR_ATTR_ALPHA};
    char *clr[GFUI_COLORNB] = {
	GFSCR_ELT_BGCOLOR, GFSCR_ELT_TITLECOLOR, GFSCR_ELT_BGBTNFOCUS, GFSCR_ELT_BGBTNCLICK,
	GFSCR_ELT_BGBTNENABLED, GFSCR_ELT_BGBTNDISABLED, GFSCR_ELT_BTNFOCUS, GFSCR_ELT_BTNCLICK,
	GFSCR_ELT_BTNENABLED, GFSCR_ELT_BTNDISABLED, GFSCR_ELT_LABELCOLOR, GFSCR_ELT_TIPCOLOR,
	GFSCR_ELT_MOUSECOLOR1, GFSCR_ELT_MOUSECOLOR2, GFSCR_ELT_HELPCOLOR1, GFSCR_ELT_HELPCOLOR2,
	GFSCR_ELT_BGSCROLLIST, GFSCR_ELT_SCROLLIST, GFSCR_ELT_BGSELSCROLLIST, GFSCR_ELT_SELSCROLLIST,
	GFSCR_ELT_EDITCURSORCLR
    };
    
    hdle = GfParmReadFile(GFSCR_CONF_FILE, GFPARM_RMODE_STD | GFPARM_RMODE_CREAT);
    for (i = 0; i < GFUI_COLORNB; i++) {
	for (j = 0; j < 4; j++) {
	    sprintf(buf, "%s/%s/%s", GFSCR_SECT_MENUCOL, GFSCR_LIST_COLORS, clr[i]);
	    GfuiColor[i][j] = GfParmGetNum(hdle, buf, rgba[j], (char*)NULL, 1.0);
	}
    }
    GfParmReleaseHandle(hdle);

    if (strstr((const char*)glGetString(GL_RENDERER), "Glide") != NULL) {
	GfuiMouseVisible = 1;
    } else {
	GfuiMouseVisible = 0;
    }
}


void
gfuiInit(void)
{
    gfuiButtonInit();
    gfuiHelpInit();
    gfuiLabelInit();
    gfuiObjectInit();
    gfuiColorInit();
    gfuiLoadFonts();

/*     glutSetKeyRepeat(GLUT_KEY_REPEAT_OFF); */
}


/** Dummy display function for glut.
    Declare this function to glut if nothing is to be displayed by the redisplay mechanism.
    @ingroup	gui
 */
void
GfuiDisplayNothing(void)
{
}

/** Idle function for the GUI to be called during Idle loop of glut.
    @ingroup	gui
 */
void
GfuiIdle(void)
{
    double		curtime = GfTimeClock();
    
    if ((curtime - LastTimeClick) > DelayRepeat) {
	DelayRepeat = REPEAT2;
	LastTimeClick = curtime;
	if (GfuiScreen->mouse == 1) {
	    /* button down */
	    gfuiUpdateFocus();
	    gfuiMouseAction((void*)0);
	    glutPostRedisplay();
	}
    }
}

/** Display function for the GUI to be called during redisplay of glut.
    @ingroup	gui
*/
void
GfuiDisplay(void)
{
    tGfuiObject	*curObj;

    glDisable(GL_DEPTH_TEST);
    glDisable(GL_LIGHTING);
    glDisable(GL_TEXTURE_2D);
    glDisable(GL_CULL_FACE);
    glDisable(GL_ALPHA_TEST);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

    GfScrGetSize(&ScrW, &ScrH, &ViewW, &ViewH);

    glViewport((ScrW-ViewW) / 2, (ScrH-ViewH) / 2, ViewW, ViewH);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluOrtho2D(0, GfuiScreen->width, 0, GfuiScreen->height);
    glMatrixMode(GL_MODELVIEW);  
    glLoadIdentity();

    if (GfuiScreen->bgColor[3] != 0.0) {
	glClearColor(GfuiScreen->bgColor[0],
		     GfuiScreen->bgColor[1],
		     GfuiScreen->bgColor[2],
		     GfuiScreen->bgColor[3]);
	glClear(GL_COLOR_BUFFER_BIT);
    }
    if (GfuiScreen->bgImage != 0) {
	glDisable(GL_BLEND);
	glEnable(GL_TEXTURE_2D);
	glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);
	glColor3f(0.0, 0.0, 1.0);
	glBindTexture(GL_TEXTURE_2D, GfuiScreen->bgImage);
	glBegin(GL_QUADS);
	glTexCoord2f(0.0, 0.0); glVertex3f(0.0, 0.0, 0.0);
	glTexCoord2f(0.0, 1.0); glVertex3f(0.0, GfuiScreen->height, 0.0);
	glTexCoord2f(1.0, 1.0); glVertex3f(GfuiScreen->width, GfuiScreen->height, 0.0);
	glTexCoord2f(1.0, 0.0); glVertex3f(GfuiScreen->width, 0.0, 0.0);
	glEnd();
	glDisable(GL_TEXTURE_2D);
	glEnable(GL_BLEND);
    }
    
    curObj = GfuiScreen->objects;
    if (curObj) {
	do {
	    curObj = curObj->next;
	    GfuiDraw(curObj);
	} while (curObj != GfuiScreen->objects);
    }
    
    if ((GfuiMouseVisible) && (GfuiScreen->mouseAllowed)) GfuiDrawCursor();
    glDisable(GL_BLEND);
    glutSwapBuffers();
}

static void
gfuiKeyboard(unsigned char key, int /* x */, int /* y */)
{
    tGfuiKey	*curKey;
    int		modifier;
    tGfuiObject	*obj;
    
    modifier = glutGetModifiers();
    
    /* now see the user's defined keys */
    if (GfuiScreen->userKeys != NULL) {
	curKey = GfuiScreen->userKeys;
	do {
	    curKey = curKey->next;
	    if ((curKey->key == key) && ((curKey->modifier == 0) || (curKey->modifier & modifier) != 0)) {
		curKey->onPress(curKey->userData);
		break;
	    }
	} while (curKey != GfuiScreen->userKeys);
    }

    obj = GfuiScreen->hasFocus;
    if (obj != NULL) {
	switch (obj->widget) {
	case GFUI_EDITBOX:
	    gfuiEditboxKey(obj, (int)key, modifier);
	    break;
	}
    }
    glutPostRedisplay();
}

static void
gfuiSpecial(int key, int /* x */, int /* y */)
{
    tGfuiKey	*curKey;
    int		modifier;
    tGfuiObject	*obj;
    
    modifier = glutGetModifiers();

    /* now see the user's defined keys */
    if (GfuiScreen->userSpecKeys != NULL) {
	curKey = GfuiScreen->userSpecKeys;
	do {
	    curKey = curKey->next;
	    if ((curKey->specialkey == key) && ((curKey->modifier == 0) || (curKey->modifier & modifier) != 0)) {
		curKey->onPress(curKey->userData);
		break;
	    }
	} while (curKey != GfuiScreen->userSpecKeys);
    }
    obj = GfuiScreen->hasFocus;
    if (obj != NULL) {
	switch (obj->widget) {
	case GFUI_EDITBOX:
	    gfuiEditboxKey(obj, key + 256, modifier);
	    break;
	}
    }
    glutPostRedisplay();
}

/** Get the mouse information (position and buttons)
    @ingroup	gui
    @return	mouse information
*/
tMouseInfo *GfuiMouseInfo(void)
{
    return &GfuiMouse;
}

static void
gfuiMouse(int button, int state, int x, int y)
{
    GfuiMouse.X = (x - (ScrW - ViewW)/2) * (int)GfuiScreen->width / ViewW;
    GfuiMouse.Y = (ViewH - y + (ScrH - ViewH)/2) * (int)GfuiScreen->height / ViewH;
    GfuiMouse.button[button] = 1 - state;
    
    DelayRepeat = REPEAT1;
    LastTimeClick = GfTimeClock();
    if (state == GLUT_DOWN) {
	if (button == GLUT_RIGHT_BUTTON) {
	    GfuiScreen->mouse = 0;
	    GfuiMouseVisible = 1 - GfuiMouseVisible;
	    gfuiUpdateFocus();
	} else {
	    GfuiScreen->mouse = 1;
	    gfuiUpdateFocus();
	    gfuiMouseAction((void*)0);
	}
    } else {
	GfuiScreen->mouse = 0;
	gfuiUpdateFocus();
	if (button != GLUT_RIGHT_BUTTON) {
	    gfuiMouseAction((void*)1);
	}
    }
    glutPostRedisplay();
}

static void
gfuiMotion(int x, int y)
{
    GfuiMouse.X = (x - (ScrW - ViewW)/2) * (int)GfuiScreen->width / ViewW;
    GfuiMouse.Y = (ViewH - y + (ScrH - ViewH)/2) * (int)GfuiScreen->height / ViewH;
    gfuiUpdateFocus();
    gfuiMouseAction((void*)(1 - GfuiScreen->mouse));
    glutPostRedisplay();
    DelayRepeat = REPEAT1;
}

static void
gfuiPassiveMotion(int x, int y)
{
    GfuiMouse.X = (x - (ScrW - ViewW)/2) * (int)GfuiScreen->width / ViewW;
    GfuiMouse.Y = (ViewH - y + (ScrH - ViewH)/2) * (int)GfuiScreen->height / ViewH;
    gfuiUpdateFocus();
    glutPostRedisplay();
}

/** Tell if the screen is active or not.
    @ingroup	gui
    @param	screen	Screen to activate
    @return	1 if active and 0 if not.
 */
int
GfuiScreenIsActive(void *screen)
{
    return (GfuiScreen == screen);
}

/** Activate a screen and make it current.
    @ingroup	gui
    @param	screen	Screen to activate
    @warning	The current screen at the call time is deactivated.
 */
void
GfuiScreenActivate(void *screen)
{
    if ((GfuiScreen) && (GfuiScreen->onDeactivate)) GfuiScreen->onDeactivate(GfuiScreen->userDeactData);

    GfuiScreen = (tGfuiScreen*)screen;
    
    glutKeyboardFunc(gfuiKeyboard);
    glutSpecialFunc(gfuiSpecial);
    glutMouseFunc(gfuiMouse);
    glutMotionFunc(gfuiMotion);
    glutPassiveMotionFunc(gfuiPassiveMotion);
    glutIdleFunc(GfuiIdle);

    if (GfuiScreen->onlyCallback == 0) {
	if (GfuiScreen->hasFocus == NULL) {
	    gfuiSelectNext(NULL);
	}
	glutDisplayFunc(GfuiDisplay);
    } else {
	glutDisplayFunc(GfuiDisplayNothing);
    }
    
    if (GfuiScreen->onActivate) GfuiScreen->onActivate(GfuiScreen->userActData);

    if (GfuiScreen->onlyCallback == 0) {
	GfuiDisplay();
	glutPostRedisplay();
    }
}


/** Activate a screen and make it current plus release the current screen.
    @ingroup	gui
    @param	screen	Screen to activate
    @warning	The current screen at the call time is deactivated.
 */
void
GfuiScreenReplace(void *screen)
{
    tGfuiScreen	*oldScreen = GfuiScreen;

    GfuiScreenActivate(screen);
    
    if (oldScreen) {
	GfuiScreenRelease(oldScreen);
    }
}

/** Deactivate the current screen.
    @ingroup	gui
 */
void
GfuiScreenDeactivate(void)
{
    if (GfuiScreen->onDeactivate) GfuiScreen->onDeactivate(GfuiScreen->userDeactData);
    
    GfuiScreen = (tGfuiScreen*)NULL;
    
    glutKeyboardFunc((void(*)(unsigned char,int,int))NULL);
    glutSpecialFunc((void(*)(int,int,int))NULL);
    glutMouseFunc((void(*)(int,int,int,int))NULL);
    glutMotionFunc((void(*)(int,int))NULL);
    glutPassiveMotionFunc((void(*)(int,int))NULL);
    glutIdleFunc((void(*)(void))NULL);
    glutDisplayFunc(GfuiDisplayNothing);
}

/** Create a new screen.
    @ingroup	gui
    @return	New screen instance
		<br>NULL if Error
 */
void *
GfuiScreenCreate(void)
{
    tGfuiScreen	*screen;
    
    screen = (tGfuiScreen*)calloc(1, sizeof(tGfuiScreen));
    
    screen->width = 640.0;
    screen->height = 480.0;
    screen->bgColor = &(GfuiColor[GFUI_BGCOLOR][0]);
    screen->mouseColor[0] = &(GfuiColor[GFUI_MOUSECOLOR1][0]);
    screen->mouseColor[1] = &(GfuiColor[GFUI_MOUSECOLOR2][0]);
    screen->mouseAllowed = 1;
    
    return (void*)screen;
}

/** Create a screen.
    @ingroup	gui
    @param	bgColor			pointer on color array (RGBA) (if NULL default color is used)
    @param	userDataOnActivate	Parameter to the activate function
    @param	onActivate		Function called when the screen is activated
    @param	userDataOnDeactivate	Parameter to the deactivate function
    @param	onDeactivate		Function called when the screen is deactivated
    @param	mouseAllowed		Flag to tell if the mouse cursor can be displayed
    @return	New screen instance
		<br>NULL if Error
    @bug	Only black background work well
 */
void *
GfuiScreenCreateEx(float *bgColor,
		   void *userDataOnActivate, tfuiCallback onActivate, 
		   void *userDataOnDeactivate, tfuiCallback onDeactivate, 
		   int mouseAllowed)
{
    int		i;
    tGfuiScreen	*screen;
    
    screen = (tGfuiScreen*)calloc(1, sizeof(tGfuiScreen));
    
    screen->width = 640.0;
    screen->height = 480.0;
    if (bgColor != NULL) {
	screen->bgColor = (float*)calloc(4, sizeof(float));
	for(i = 0; i < 4; i++) {
	    screen->bgColor[i] = bgColor[i];
	}
    } else {
	screen->bgColor = &(GfuiColor[GFUI_BGCOLOR][0]);
    }
    screen->mouseColor[0] = &(GfuiColor[GFUI_MOUSECOLOR1][0]);
    screen->mouseColor[1] = &(GfuiColor[GFUI_MOUSECOLOR2][0]);
    screen->onActivate = onActivate;
    screen->userActData = userDataOnActivate;
    screen->onDeactivate = onDeactivate;
    screen->userDeactData = userDataOnDeactivate;
    
    screen->mouseAllowed = mouseAllowed;
    
    return (void*)screen;
}

/** Release the given screen.
    @ingroup	gui
    @param	scr	Screen to release
    @warning	If the screen was activated, it is deactivated.
 */
void
GfuiScreenRelease(void *scr)
{
    tGfuiObject		*curObject;
    tGfuiObject		*nextObject;
    tGfuiKey		*curKey;
    tGfuiKey		*nextKey;
    tGfuiScreen		*screen = (tGfuiScreen*)scr;
    
    if (GfuiScreen == screen) {
	GfuiScreenDeactivate();
    }
    if (screen->bgImage != 0) {
	glDeleteTextures(1, &screen->bgImage);
    }
    curObject = screen->objects;
    if (curObject != NULL) {
	do {
	    nextObject = curObject->next;
	    gfuiReleaseObject(curObject);
	    curObject = nextObject;
	} while (curObject != screen->objects);
    }
    curKey = screen->userKeys;
    if (curKey != NULL) {
	do {
	    nextKey = curKey->next;
	    free(curKey);
	    curKey = nextKey;
	} while (curKey != screen->userKeys);
    }
    curKey = screen->userSpecKeys;
    if (curKey != NULL) {
	do {
	    nextKey = curKey->next;
	    free(curKey);
	    curKey = nextKey;
	} while (curKey != screen->userSpecKeys);
    }
    free(screen);
}

/** Create a callback hook.
    @ingroup	gui
    @param	userDataOnActivate	Parameter to the activate function
    @param	onActivate		Function called when the screen is activated
    @return	New hook instance
		<br>NULL if Error
 */
void *
GfuiHookCreate(void *userDataOnActivate, tfuiCallback onActivate)
{
    tGfuiScreen	*screen;
    
    screen = (tGfuiScreen*)calloc(1, sizeof(tGfuiScreen));
    screen->onActivate = onActivate;
    screen->userActData = userDataOnActivate;
    screen->onlyCallback = 1;
    
    return (void*)screen;
}

/** Release the given hook.
    @ingroup	gui
    @param	hook	Hook to release
 */
void
GfuiHookRelease(void *hook)
{
    free(hook);
}



/** Add a Keyboard callback to a screen.
    @ingroup	gui
    @param	scr		Screen
    @param	key		Key code (glut value)
    @param	descr		Description for help screen
    @param	userData	Parameter to the callback function
    @param	onKeyPressed	Callback function
 */
void
GfuiAddKey(void *scr, unsigned char key, char *descr, void *userData, tfuiCallback onKeyPressed)
{
    tGfuiKey	*curKey;
    tGfuiScreen	*screen = (tGfuiScreen*)scr;
    char	buf[16];
    
    curKey = (tGfuiKey*)calloc(1, sizeof(tGfuiKey));
    curKey->key = key;
    curKey->userData = userData;
    curKey->onPress = onKeyPressed;
    if (descr == NULL) {
	curKey->descr = strdup("");
    } else {
	curKey->descr = strdup(descr);
    }
    switch(key){
    case 8:
	curKey->name = strdup("backspace");
	break;
    case 9:
	curKey->name = strdup("tab");
	break;
    case 13:
	curKey->name = strdup("enter");
	break;
    case 27:
	curKey->name = strdup("esc");
	break;
    case ' ':
	curKey->name = strdup("space");
	break;
    default:
	sprintf(buf, "%c", key);
	curKey->name = strdup(buf);
	break;
    }

    if (screen->userKeys == NULL) {
	screen->userKeys = curKey;
	curKey->next = curKey;
    } else {
	curKey->next = screen->userKeys->next;
	screen->userKeys->next = curKey;
	/* screen->userKeys = curKey; */
    }
}
/** Add a Keyboard callback to the current screen.
    @ingroup	gui
    @param	key		Key code (glut value)
    @param	descr		Description for help screen
    @param	userData	Parameter to the callback function
    @param	onKeyPressed	Callback function called when the specified key is pressed
 */
void
GfuiRegisterKey(unsigned char key, char *descr, void *userData, tfuiCallback onKeyPressed)
{
    GfuiAddKey(GfuiScreen, key, descr, userData, onKeyPressed);
}

/** Add a Special Keyboard shortcut to the screen.
    (see glut for normal and special keys)
    @ingroup	gui
    @param	scr		Screen
    @param	key		Key code (glut value)
    @param	descr		Description for help screen
    @param	userData	Parameter to the callback function
    @param	onKeyPressed	Callback function
 */
void
GfuiAddSKey(void *scr, int key, char *descr, void *userData, tfuiCallback onKeyPressed)
{
    tGfuiKey	*curKey;
    tGfuiScreen	*screen = (tGfuiScreen*)scr;
    
    curKey = (tGfuiKey*)calloc(1, sizeof(tGfuiKey));
    curKey->specialkey = key;
    curKey->userData = userData;
    curKey->onPress = onKeyPressed;
    if (descr == NULL) {
	curKey->descr = strdup("");
    } else {
	curKey->descr = strdup(descr);
    }
    switch(key) {
    case GLUT_KEY_F1:
	curKey->name = strdup("F1");
	break;
    case GLUT_KEY_F2:
	curKey->name = strdup("F2");
	break;
    case GLUT_KEY_F3:
	curKey->name = strdup("F3");
	break;
    case GLUT_KEY_F4:
	curKey->name = strdup("F4");
	break;
    case GLUT_KEY_F5:
	curKey->name = strdup("F5");
	break;
    case GLUT_KEY_F6:
	curKey->name = strdup("F6");
	break;
    case GLUT_KEY_F7:
	curKey->name = strdup("F7");
	break;
    case GLUT_KEY_F8:
	curKey->name = strdup("F8");
	break;
    case GLUT_KEY_F9:
	curKey->name = strdup("F9");
	break;
    case GLUT_KEY_F10:
	curKey->name = strdup("F10");
	break;
    case GLUT_KEY_F11:
	curKey->name = strdup("F11");
	break;
    case GLUT_KEY_F12:
	curKey->name = strdup("F12");
	break;
    case GLUT_KEY_LEFT:
	curKey->name = strdup("Left Arrow");
	break;
    case GLUT_KEY_UP:
	curKey->name = strdup("Up Arrow");
	break;
    case GLUT_KEY_RIGHT:
	curKey->name = strdup("Right Arrow");
	break;
    case GLUT_KEY_DOWN:
	curKey->name = strdup("Down Arrow");
	break;
    case GLUT_KEY_PAGE_UP:
	curKey->name = strdup("Page Up");
	break;
    case GLUT_KEY_PAGE_DOWN:
	curKey->name = strdup("Page Down");
	break;
    case GLUT_KEY_HOME:
	curKey->name = strdup("Home");
	break;
    case GLUT_KEY_END:
	curKey->name = strdup("End");
	break;
    case GLUT_KEY_INSERT:
	curKey->name = strdup("Insert");
	break;
    }
    

    if (screen->userSpecKeys == NULL) {
	screen->userSpecKeys = curKey;
	curKey->next = curKey;
    } else {
	curKey->next = screen->userSpecKeys->next;
	screen->userSpecKeys->next = curKey;
	screen->userSpecKeys = curKey;
    }
}

/** Save a screen shot in png format.
    @ingroup	screen
 */
void
GfuiScreenShot(void *notused)
{
    unsigned char	*img;
    char		buf[256];
    struct tm		*stm;
    time_t		t;
    int			sw, sh, vw, vh;
    
    GfScrGetSize(&sw, &sh, &vw, &vh);
    img = (unsigned char*)malloc(vw * vh * 3);
    if (img == NULL) {
	return;
    }
    
    glPixelStorei(GL_PACK_ROW_LENGTH, 0);
    glPixelStorei(GL_PACK_ALIGNMENT, 1);
    glReadBuffer(GL_FRONT);
    glReadPixels((sw-vw)/2, (sh-vh)/2, vw, vh, GL_RGB, GL_UNSIGNED_BYTE, (GLvoid*)img);

    t = time(NULL);
    stm = localtime(&t);
    sprintf(buf, "torcs-%4d%02d%02d%02d%02d%02d.png",
	    stm->tm_year+1900,
	    stm->tm_mon+1,
	    stm->tm_mday,
	    stm->tm_hour,
	    stm->tm_min,
	    stm->tm_sec);
    GfImgWritePng(img, buf, vw, vh);

    free(img);
}

/** Add an image background to a screen.
    @ingroup	gui
    @param	scr		Screen
    @param	filename	file name of the bg image
    @return	None.
 */
void
GfuiScreenAddBgImg(void *scr, char *filename)
{
    tGfuiScreen	*screen = (tGfuiScreen*)scr;
    void	*handle;
    float	screen_gamma;
    GLbyte	*tex;
    int		w,h;
    
    if (screen->bgImage != 0) {
	glDeleteTextures(1, &screen->bgImage);
    }
    
    handle = GfParmReadFile(GFSCR_CONF_FILE, GFPARM_RMODE_STD | GFPARM_RMODE_CREAT);
    screen_gamma = (float)GfParmGetNum(handle, GFSCR_SECT_PROP, GFSCR_ATT_GAMMA, (char*)NULL, 2.0);
    tex = (GLbyte*)GfImgReadPng(filename, &w, &h, screen_gamma);
    if (!tex) {
	GfParmReleaseHandle(handle);
	return;
    }
    glGenTextures(1, &screen->bgImage);
    glBindTexture(GL_TEXTURE_2D, screen->bgImage);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, w, h, 0, GL_RGBA, GL_UNSIGNED_BYTE, (GLvoid *)(tex));
    free(tex);
    GfParmReleaseHandle(handle);
}


