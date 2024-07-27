#!/bin/bash

echo ""
echo "======================"
echo "= Repository-Updater ="
echo "======================"
echo ""

timestamp=`date`
echo "Timestamp: $timestamp"
echo ""

updateRepository () {
    echo "Updating '$1' ..."
    cd $1
    git reset --hard
    git pull
    echo ""
}

updateRepository "$HOME/pi_watering"
updateRepository "$HOME/pi_lastmgmt"
updateRepository "$HOME/pi_updater"
