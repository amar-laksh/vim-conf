#!/bin/bash -
#===============================================================================
#
#          FILE: install.sh
#
#         USAGE: ./install.sh
#
#   DESCRIPTION:
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (),
#  ORGANIZATION:
#       CREATED: 31/03/20 23:06:13
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

cp -R $PWD ~/.vim-conf && \
	cd ~/.vim-conf/ && ln -s .vimrc ~/.vimrc
