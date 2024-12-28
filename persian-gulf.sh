#!/bin/bash

clear
version="1.5"
printf  "\033[4;40;31m"
echo "
███████████████████████████████████████████
█▄─▄▄─█▄─▄▄─█▄─▄▄▀█─▄▄▄▄█▄─▄██▀▄─██▄─▀█▄─▄█
██─▄▄▄██─▄█▀██─▄─▄█▄▄▄▄─██─███─▀─███─█▄▀─██
▀▄▄▄▀▀▀▄▄▄▄▄▀▄▄▀▄▄▀▄▄▄▄▄▀▄▄▄▀▄▄▀▄▄▀▄▄▄▀▀▄▄▀
█████▀████████████████████
█─▄▄▄▄█▄─██─▄█▄─▄███▄─▄▄─█
█─██▄─██─██─███─██▀██─▄███
▀▄▄▄▄▄▀▀▄▄▄▄▀▀▄▄▄▄▄▀▄▄▄▀▀▀  by RICH Brain v$version 
"
printf "\033[0m" 
echo "
	[i] - IP Finder			[s] - Server info
	[c] - Source Code
"
# by RICH Brain
printf "\033[31m Gozine Shoma : \033[0m "
read -n 1 option
echo
case $option in 

i)
	printf "\033[36m \t Domain : https:// \033[0m"
	read domain
	printf "\033[34m \t IP address of $domain is { "$(dig +short $domain)" } \033[0m"
	;;
s)
	printf "\033[36m \t Domain / IP : \033[0m"
        read inp
        printf " \033[33m \t Info about $inp : \033[0m"
	echo
	printf "\033[35m"
	whois $inp
	printf "\033[0m"
	;;
c)
	printf "\033[36m \t Enter File Name(example.txt) : \033[0m"
	read inp
	printf "\033[36m \t Domain :  https://\033[0m"
        read dom
	$(curl -o $inp https://$dom)
	printf "\033[34m Source code of https://$dom saved in $inp file Successfully. \033[0m"	
;;
*)
	printf "\033[35m Please Enter Valid option! \033[0m"
	;;
esac
# scripted by RICH Brain
echo
echo
printf "\033[37m ============== program finished =============== \033[0m"
echo
echo
