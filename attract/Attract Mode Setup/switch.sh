mode=$(head -n1 ~/.attract/attract.cfg)
echo $mode

if [ "$mode" = "# Simple" ]; then
echo "Simple Mode detected, Switching to Nested"
sleep 2
rm -rf ~/.attract/attract.cfg
cp ~/.attract/attract.nested ~/.attract/attract.cfg
reboot
fi 

if [ "$mode" = "# Nested" ]; then
echo "Nested Mode detected, Switching to Simple"
sleep 2
rm -rf ~/.attract/attract.cfg
cp ~/.attract/attract.simple ~/.attract/attract.cfg
reboot
fi

