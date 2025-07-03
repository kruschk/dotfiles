#!/usr/bin/env bash
#
# ~/.bash_profile
#

[ -r "$HOME"/.bashrc ] && . "$HOME"/.bashrc

################################################################################
# Environment variables
################################################################################
export EDITOR=vim
export VISUAL="$EDITOR"
export PATH="$PATH:$HOME/bin"

################################################################################
# GUI
################################################################################
# Start X if on virtual terminal 1
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]
then
    #sway
    # A more secure alternative (logs out after the Wayland session ends)
    exec sway >>"$HOME"/.local/state/sway.log 2>&1
fi
