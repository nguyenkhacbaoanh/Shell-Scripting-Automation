PID=27961
if ps -p $PID >&- ; then
  echo running
else
  echo not running
fi
