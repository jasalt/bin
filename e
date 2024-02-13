#!/bin/sh
# Launch emacsclient or emacs passing args to it on Debian / MacOS.

# If having trouble on Mac, make sure correct emacsclient is found in $PATH.

if [ "$(pidof emacs)" ] ; then
    emacsclient  -s ~/.emacs.d/.cache/server/jarkon-emacs "$@" &
else

    if [[ $OSTYPE == 'darwin'* ]]; then
	open -a Emacs --args --chdir $PWD "$@"
    else
	emacs "$@" &
    fi
    
fi
