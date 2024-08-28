# pi_updater
Einfache Repository-Aktualisierung für Raspberry Pi

## Zeitseuerung
Empfehlung: Nutzung von crontab-ui

Manuelle Metode mit `crontab -e`:
```
crontab -e
* * * * * $HOME/pi_updater/updater.sh > $HOME/pi_updater/updater.log 2>&1
```