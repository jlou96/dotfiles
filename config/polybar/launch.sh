#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybars
echo "---" | tee -a /tmp/polybar-1.log /tmp/polybar-2.log
MONITOR="DisplayPort-0" polybar lanaya-1 >>/tmp/polybar-1.log 2>&1 &
MONITOR="HDMI-A-0" polybar lanaya-2 >>/tmp/polybar-2.log 2>&1 &

echo "Bars launched..."
