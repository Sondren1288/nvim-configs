#!/bin/sh

export XAUTHORITY=/home/sondre/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

touch /home/sondre/I_AM_HERE
# SUBSYSTEM=="power_supply", ATTR{status}=="Discharging", ENV{DISPLAY}=":0", ENV{XAUTHORITY}="/home/sondre/.Xauthority" RUN+="/usr/bin/su sondre -c /home/sondre/scripts/.battery_note.sh"

#/usr/bin/sudo -u sondre /home/sondre/scripts/test_cowsay_popup