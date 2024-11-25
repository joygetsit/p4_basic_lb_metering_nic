echo '======================================================================== '
echo      Starting Test for P4 Basic Loadbalancing and Metering - Host
echo '======================================================================== '
echo ' '

echo 'The following is a display of the traffic on v0.0 v0.1 v0.2 v0.3:'
nload -m vf0_0 vf0_1 vf0_2 vf0_3
pid=$(ps -e | pgrep tcpreplay)
read -n 1 -s -r -p "Press any key to stop monitering traffic"
kill -2 $pid
sleep 1

echo '------------------------------------------------------------- '
echo ' '

echo 'End of test'
