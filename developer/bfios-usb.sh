# This is a comment too

#free port
function free_port() {
    #Get the port that the user passed in
    port=$1

    if [[ ${#port} == 0 ]]; then
#    echo "Kills a service running on the specified port."
#    echo "usage: killport PORT"
    exit;
    fi

    # Get everything running on this port
    lsofcmd="lsof -i :$port"

    # echo the command, and then iterate through each line of the output
    counter=0
    $(echo $lsofcmd) | while read -r line; do
    counter=$((counter+1)) # We want to skip the first line, as the first line is the column headers, from lsof

    if [[ $counter > 1 ]]; then
    procname=$(echo $line | awk '{print $1}')
    pid=$(echo $line | awk '{print $2}')

#    echo "Killing $procname with PID: $pid"
    kill $pid;
    fi
    done
}
#字符颜色显示
#-e:允许echo使用转义
#\033[:开始位
#\033[0m:结束位
#\033等同于\e
#32m绿色
#34m蓝色
echo '|\033[34mKill port if port 10010 and 10086 is in use\033[0m                           |'
free_port 10010
free_port 10086
echo '|-------------------Kill End-----------------------------------|'
echo '\n'
echo '|------------------\033[34m10010\033[0m--------------------------------------------|'
echo '|\033[34mport 10010 is used for ssh login iPhone \033[0m                           |'
echo '|\033[34mmac lldb use port 10010 connect iPhone usb port 22 \033[0m                |'
echo '|---------------------\033[34mSSH  Login Usage\033[0m------------------------------|'
echo '|\033[34mmac port 10010 now connecting to iPhone port 22 \033[0m                   |'
echo '|\033[32m> 1. open new terminal window\033[0m                                      |'
echo '|\033[32m> 2. use bfios-login.sh login\033[0m                                      |'
echo '|-------------------------------------------------------------------|'
echo '\n'
echo '|--------------------\033[34m10086\033[0m------------------------------------------|'
echo '|\033[34mport 10086 is used for debugserver in iPhone \033[0m                      |'
echo '|\033[34mmac lldb use port 9999 connect iPhone debugserver of port 10086 \033[0m   |'
echo '|---------------------\033[34mdebugserver  Usage \033[0m---------------------------|'
echo '|\033[32m> 1. In iPhone:  debugserver *:10086 -a [AppName or processid]\033[0m     |'
echo '|\033[32m> 2. In Mac:     enter lldb\033[0m 										 |'
echo '|\033[32m> 3. In Mac:     process connect connect://localhost:9999\033[0m          |'
echo '|-------------------------------------------------------------------|'

iproxy 10010 22 & \
iproxy 9999 10086
