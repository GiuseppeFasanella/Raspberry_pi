```
crontab -l | awk '{ if ($3 == "*" && $6 ~ /mplayer/ ) {$1 = 01; $2 = "18"; print} else {print} }' | crontab -
```
Nell'esempio, se la terza colonna e' * e la sesta contiene mplayer allora aggiorna l'ora del cronjob alle 18:01

Nota che non e' la soluzione ottimale, visto che tutte le righe vengono riscritte uguali a come sono, tranne quella
che vuoi cambiare tu, ma insomma, quanti cronjob hai tu?

Importante il `| crontab -` alla fine altrimenti i cronjob NON vengono aggiornati

```
#Schiaffa questo in uno script
crontab -l | awk -v min=$1 -v hours=$2 '{ if ($3 == "*" && $6 ~ /mplayer/ ) {$1 = min; $2 = hours; print} else {print} }' | crontab -
```
