#apache paigaldusskript
#
#kontrollime, mitu koda apache2 korral ok installitud
APACHE2=$(qpkg-query -W -f='${Status}' apache2 2>/dev/nul |grep -c 'ok installed')
#kui APACHE2 muutuja väärtus võrdub 0-ga
if [ $APACHE2 -eq 0 ]; then
	#
	echo "Paigaldame apache2"
	apt install apache2
	echo "Apache on paigaldatud"
elif [ $APACHE2 -eq 1 ]; then
	echo "apache2 on juba installitud"
	service apache2 startu
	service apache2 status
fi
