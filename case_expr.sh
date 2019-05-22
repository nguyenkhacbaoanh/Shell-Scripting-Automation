#! /bin/bash

echo "your color favarite: $1"

color=$1

case $color in
    blue )
        echo "You are a boy" ;;
    red )
        echo "You are a boy" ;;
    green )
        echo "You are a boy" ;;
    pink )
        echo "You are a girl" ;;
    * ) # default case
        echo "You are awesome" ;;
esac
    