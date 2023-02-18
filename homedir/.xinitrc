# while xsetroot -name " `date +'%b %d, %I:%M%P'` "
# do
#     sleep 5
# done & 

setkblayout engram &
xset m 1 0 & xset r rate 340 38 &

exec dwm
