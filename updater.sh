#!/bin/bash

echo ""
echo "======================"
echo "= Repository-Updater ="
echo "======================"
echo ""

updateRepository () {
    echo "Updating '$1' ..."
    cd $1
    git reset --hard
    git pull
    echo ""
}

updateRepository "~/pi_watering"
updateRepository "~/pi_lastmgmt"
updateRepository "~/pi_updater"
