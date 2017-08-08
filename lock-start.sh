#!/bin/zsh

start() {
  killall xss-lock
  #echo "starting xss-lock"
  xss-lock -- i3lock -i ~/docs/lock.png -tfd &
  #watch $!
}

start
