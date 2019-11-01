#! /bin/ksh
if [[ -e ./python.pid ]] ; then
    rm ./python.pid
fi
echo running python server
python -m http.server > /dev/null&
echo $! > python.pid
