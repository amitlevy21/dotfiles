#!/bin/sh

remaps
nitrogen --restore &

synclient TapButton1=1
synclient HorizScrollDelta=-100
synclient VertScrollDelta=-100

xautolock -time 10 -locker "i3lock -c 000000"

dte(){
  dte="$(date +"%A %B %d,%l:%M%p")"
  echo -e "$dte"
}

mem(){
  mem=`free | awk '/Mem/ {printf "%d/%d MiB\n", $3 / 1024.0, $2 / 1024.0 }'`
  echo -e "$mem"
}

cpu(){
  read cpu a b c previdle rest < /proc/stat
  prevtotal=$((a+b+c+previdle))
  sleep 0.5
  read cpu a b c idle rest < /proc/stat
  total=$((a+b+c+idle))
  cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
  echo -e "💻 $cpu%"
}

power(){
  status="$(cat /sys/class/power_supply/AC/online)"
  b1="$(cat /sys/class/power_supply/BAT0/capacity)"
  b2="$(cat /sys/class/power_supply/BAT1/capacity)"
  s="$(expr ${b1} + ${b2})"
  t="$(expr ${s} / 2)"
  if [ "${status}" == 1 ]; then
    echo -ne "🔌 ${t}%"
  else
    echo -ne "🔋 ${t}%"
  fi
}

wifi() {
  wifiessid="$(/sbin/iwconfig 2>/dev/null | grep ESSID | cut -d: -f2)"
  wifiawk="$(echo $wifiessid | awk -F',' '{gsub(/"/, "", $1); print $1}')"
  wificut="$(echo $wifiawk | cut -d' ' -f1)"
  echo -ne "📡 ${wificut}"
}

hdd() {
  hddfree="$(df -Ph /dev/nvme0n1p2 | awk '$3 ~ /[0-9]+/ {print $4}')"
  echo -ne "💾 ${hddfree}"
}

vol(){
  mix=`amixer get Master | tail -1`
  vol="$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')"
  if [[ $mix == *\[off\]* ]]; then
    echo -e "🔇 "
  elif [[ $mix == *\[on\]* ]]; then
    echo -e "🔉 ${vol}%"
  else
    echo -e "🔈 "
  fi
}

while true; do
     xsetroot -name "$(cpu) | $(vol) | $(wifi) | $(power) | $(dte)"
     sleep 10s    # Update time every ten seconds
done &

