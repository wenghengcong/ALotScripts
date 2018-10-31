# This is a comment too
echo '---------------------------------------------'
echo 'SSH login'
echo 'mac port 10010 connect to iPhone port 22' 
echo '---------------------------------------------'
echo 'lldb connect debugserver by mac port 9999 to iPhone port 10086'
echo '1. In iPhone:  debugserver *:10086 -a App name'
echo '2. In Mac:     enter lldb'
echo '3. In Mac:     process connect connect://localhost:9999'
echo '---------------------------------------------'
iproxy 10010 22 & \
iproxy 9999 10086