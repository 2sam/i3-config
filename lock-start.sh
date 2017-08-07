#!/bin/zsh

start() {
  killall xss-lock
  #echo "starting xss-lock"
  xss-lock -- i3lock -i ~/docs/lock.png -tfd &
  watch $!
}

watch() {
  PID=$1

  while ps $PID; do
    #echo "watching wifi"
    if iwconfig wlp3s0|grep 'Grassenberg e.V. OBEN'; then 
      kill $PID
      #echo "killed xss-lock"
    else sleep 3s; fi
  done

  while iwconfig wlp3s0|grep OBEN; do 
    #echo "watching wifi"  
    sleep 3s; 
  done

  #echo "starting xss-lock"
  start
}

start
