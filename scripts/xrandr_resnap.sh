#!/usr/bin/env sh

######################################################################
# @author      : julian (julian@$HOSTNAME)
# @file        : xrandr_resnap
# @created     : Donnerstag Jul 26, 2018 08:48:37 CEST
#
# @description :
######################################################################

xrandr --output HDMI-1-1 --auto --right-of eDP-1-1
xrandr --output DP-1-2 --auto --right-of HDMI-1-1
