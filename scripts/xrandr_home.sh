#!/usr/bin/env sh

######################################################################
# @author      : julian
# @file        : xrandr_home
# @created     : Sunday Jul 22, 2018 13:09:48 CEST
#
# @description : Home monitor setup
######################################################################

xrandr --output DP-1-1-3 --auto --right-of eDP-1-1
xrandr --output DP-1-1-1 --auto --right-of DP-1-1-3
