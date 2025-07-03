#!/usr/bin/env bash
#
# ~/.bashrc
#

################################################################################
# Aliases
################################################################################
# Note: the trailing space is significant!
#alias info='info --vi-keys '
#alias rsync='rsync --archive -hhh --info=stats1,progress2 --partial '
alias ls='ls --classify --color=auto --group-directories-first -v '
# No trailing space for man so `man man` works properly.
alias man='MANWIDTH=$((COLUMNS < 80 ? COLUMNS : 80)) man --no-justification'

################################################################################
# Environment variables
################################################################################
# Something seems to clear PS1 when Sway is started, so it can't be exported
# from .bash_profile (only executed during login) like other environment
# variables can. Putting it in .bashrc (executed for every interactive shell)
# instead works.
#black="\[$(tput setaf 0)\]"
red="\[$(tput setaf 1)\]"
green="\[$(tput setaf 2)\]"
#yellow="\[$(tput setaf 3)\]"
blue="\[$(tput setaf 4)\]"
#magenta="\[$(tput setaf 5)\]"
#cyan="\[$(tput setaf 6)\]"
#white="\[$(tput setaf 7)\]"
reset="\[$(tput sgr0)\]"
PS0="$red\D{%F} \t\n$reset"
PS1="$green\u@\H$reset:$blue\w$reset\\$ "
unset -v black red green yellow blue magenta cyan white reset

################################################################################
# Shell options
################################################################################
set -o noclobber
set -o vi # Enable vi-like line editing
shopt -sq cdspell
shopt -sq cmdhist
#trap 'printf "\033]0;%s -- %s@%s:%s\$ %s\007" \
#             "$TERM" \
#             "$USER" \
#             "${HOSTNAME%%.*}" \
#             "${PWD/#$HOME/\~}" \
#             "${BASH_COMMAND//[^[:print:]]/}"' \
#     DEBUG

# Configure pyenv.
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
