#!/bin/sh

if ps ax|grep -v grep|grep xss-lock > /dev/null
then
  echo "xss-lock is already running"
else
  echo "starting xss-lock"
  xss-lock -- i3lock -i ~/docs/lock.png -tfd &
fi
