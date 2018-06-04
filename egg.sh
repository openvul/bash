echo "sh311 egg ver 0.2"
arr_test()
{
	array_cmd=(1 2 3 4)
	echo ${array_cmd[@]}
	for cmd in ${array_cmd[@]}
	do
		echo ${cmd}
	done
}
echo `date '+%x - %X'`
echo "uptime:"`uptime`
echo "who:"`who`
echo "whoami:"`whoami`
echo "uname -r:"`uname -r`
echo "hostname:"`hostname`
echo `ssh -V`
echo `gcc --version`
echo "gcc ------------->"`gcc --version`
echo "path ------------>"`echo $PATH`

py=`which python`
ja=`which java`
php=`which php`
ngi=`which nginx`
nm=`which nmap`
psql=`which psql`
sshp=`which sshpass`
mys=$(which mysql)


if [ ${#py} -gt 1 ]
then
	echo `python -V`
fi

if [ ${#ja} -gt 1 ]
then
	echo `java -version`
fi

if [ ${#php} -gt 1 ]
then
	echo `php -v`
fi

if [ ${#ngi} -gt 1 ]
then
	echo `nginx -V`
fi

if [ ${#nm} -gt 1 ]
then
	echo `nmap -version`
fi

if [ ${#psql} -gt 1 ]
then
	echo `psql --version`
fi

if [ ${#sshp} -gt 1 ]
then
	echo `sshpass -V`
fi

if [ ${#mys} -gt 1 ]
then
	echo `mysql --version`
fi

echo `grep '/bin/bash' /etc/passwd`
#echo `getent passwd|grep /bin/bash`

