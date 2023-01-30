# while xsetroot -name " `date +'%b %d, %I:%M%P'` "
# do
#     sleep 5
# done & 

sh /home/ivan/scripts/setkblayout.sh engram &
xset m 1 0 & xset r rate 340 38 &

exec dwm
