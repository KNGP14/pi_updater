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
echo "Zeitstempel: $timestamp"
echo ""

checkRepoNotInUse () {
    fileToCheck="$1"
    echo " ❓ Prüfe, ob '$fileToCheck' derzeit ausgeführt wird ..."
    # TODO: Prüfen ob Skripte im Repo nicht aktuell laufen
}

updateRepository () {
    echo " 🔄️ Aktualisiere Repository '$1' ..."
    checkRepoNotInUse "$2"
    cd $1
    git reset --hard
    git pull
    echo ""
}

updateRepository "$HOME/pi_watering" "pi_watering.py"
updateRepository "$HOME/pi_lastmgmt" "pi_lastmgmt.py"
updateRepository "$HOME/pi_config" "pi_config.py"
updateRepository "$HOME/pi_updater" ""
