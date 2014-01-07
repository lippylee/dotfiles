exec > .xsession-errors 2>&1

xsetroot -cursor_name left_ptr
xrdb -merge .Xresources
setxkbmap hr
xset +fp /usr/share/fonts/local
xset fp rehash

feh --bg-center ~/Pictures/wallpaper-162618.jpg

start-pulseaudio-x11

pidgin &
skype &
dunst &
nm-applet &

sxhkd &
compton &

exec bspwm
