if [[ -e python.pid ]] ; then
    PID=$(cat ./python.pid)
    if ps -p $PID >&- ; then
        status='OK'
    else
        status='KO'
    fi
    echo status is $status
else
    echo python maybe not running
    echo can\'t check it\'s status
fi
