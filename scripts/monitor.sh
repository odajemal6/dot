lc=$(xrandr | grep " connected" | wc -l)
if [ $lc = "1" ]
then
    xrandr --output eDP1 --mode 1366x768 --output HDMI1 --off
    xrandr --delmode HDMI1
else
    xrandr --output eDP1 --mode 1366x768 --pos 0x0 --rotate normal --output DP1 --off --output HDMI1 --primary --mode 1920x1080 --pos 1366x0 --rotate normal --output HDMI2 --off --output VIRTUAL1 --off
fi

