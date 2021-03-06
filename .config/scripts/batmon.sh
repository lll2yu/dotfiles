BATPATH=/sys/class/power_supply/BAT0
BAT_FULL=$BATPATH/charge_full
BAT_NOW=$BATPATH/charge_now
bf=$(cat $BAT_FULL)
bn=$(cat $BAT_NOW)
if [ $(( 100 * $bn / $bf )) -lt 15 ]
then
    notify-send --urgency critical "BATTERY LOW! Connect charger now"
fi
