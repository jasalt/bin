#include <X11/Xlib.h>
#include <X11/XKBlib.h>
#include <err.h>
#include <stdlib.h>

/* Set Caps Lock off (when there is no key bound to it)
   Compile with: cc CAPS_OFF.c -s -lX11 -o ./CAPS_OFF
   Source: https://unix.stackexchange.com/a/570304/522029*/

int main(void){
        Display *dpy;
        if(!(dpy = XOpenDisplay(0)))
                errx(1, "cannot open display '%s'", XDisplayName(0));
        XkbLockModifiers(dpy, XkbUseCoreKbd, 0xff, 0);
        XSync(dpy, False);
}
