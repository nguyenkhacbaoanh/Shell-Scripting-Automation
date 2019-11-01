#! /bin/ksh
# Learning korn shell
echo input yes or no
read answer
case $answer in 
    yes|Yes|y)
        echo got a positive answer
        ;;
    no)
        echo got a 'no'
        ;;
    q*|Q*)
        exit
        ;;
    *)
        echo This is the default clause, we are not sure why or
        echo what someone would be typing, but we could take
        echo action on it here
        ;;
esac
