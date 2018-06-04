echo "ping network ip is alive? "
echo_lan_ping()
{
    ip_index=0
    while [ $ip_index -lt 254 ]
    do
        ip_index=`expr $ip_index + 1`
        #echo 172.16.1.$ip_index
        output=`ping -W1 -c1 172.16.26.$ip_index|grep time=`
        #echo ${#output}
        if [ ${#output} -gt 1 ]
        then
            echo $output
        fi     
    done
}
echo_lan_ping
