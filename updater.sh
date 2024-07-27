#!/bin/bash

# crontab -e
# # [updater/updater.sh] Repository-Aktualisierung über github.com
# * * * * * $HOME/pi_updater/updater.sh > $HOME/pi_updater/updater.log 2>&1

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
#updateRepository "$HOME/pi_lastmgmt"
updateRepository "$HOME/pi_updater"
