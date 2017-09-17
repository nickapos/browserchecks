#!/bin/sh

makeAndKillBrowsers() {
  a=0

  while [ $a -lt 1 ]
  do
     #echo $a
     a=`expr $a + 1`
     echo "opening browser $a"
     lynx  http://google.com

     getAndKillRunningBrowserPids
  done
  echo "done"
}

getAndKillRunningBrowserPids() {
  echo "preparing to kill all browser processes"
  pids=$(pgrep lynx)
  echo $pids
  for i in $pids
  do
    echo "killing now process $i....."
    kill -9 $i

  done
}

#getAndKillRunningBrowserPids
makeAndKillBrowsers
