#php paigaldusskript
PHP=$(dpkg-querry -W -f='{$Status}' php7.4 2>/dev/null | grep -c 'ok installed')
#kui PHP = 0
if [ $PHP -eq 0 ]; then
	echo "Paigaldame PHP ja vajalikud lisad"
	apt install php7.4 libapache2-mod-php7.4 php7.4-mysql
	echo "php on paigaldatud"
elif [ $PHP - eq 1 ]; then
	echo "php on juba paigaldatud"
	which php
fi
