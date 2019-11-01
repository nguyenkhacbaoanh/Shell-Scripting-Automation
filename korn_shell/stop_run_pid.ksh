if [[ -e ./python.pid ]] ; then
    kill -9 $(cat ./python.pid)
    echo stop process successfully
    rm ./python.pid
else
    echo no process running
fi
