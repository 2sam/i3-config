#!/bin/sh

if ps ax|grep -v grep|grep pavucontrol > /dev/null
then
  killall pavucontrol &
else
  pavucontrol &
fi
