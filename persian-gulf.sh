#!/bin/bash

clear

printf  "\033[4;40;31m"
echo "
███████████████████████████████████████████
█▄─▄▄─█▄─▄▄─█▄─▄▄▀█─▄▄▄▄█▄─▄██▀▄─██▄─▀█▄─▄█
██─▄▄▄██─▄█▀██─▄─▄█▄▄▄▄─██─███─▀─███─█▄▀─██
▀▄▄▄▀▀▀▄▄▄▄▄▀▄▄▀▄▄▀▄▄▄▄▄▀▄▄▄▀▄▄▀▄▄▀▄▄▄▀▀▄▄▀
█████▀████████████████████
█─▄▄▄▄█▄─██─▄█▄─▄███▄─▄▄─█
█─██▄─██─██─███─██▀██─▄███
▀▄▄▄▄▄▀▀▄▄▄▄▀▀▄▄▄▄▄▀▄▄▄▀▀▀  by RICH Brain v 1.0 
"
printf "\033[0m" 
echo "
	[i] - IP Finder			[s] - Server info
"
# by RICH Brain
printf "\033[31m Gozine Shoma : \033[0m "
read -n 1 option
echo
case $option in 

i)
	printf "\033[36m Domain : https:// \033[0m"
	read domain
	printf "\033[34m IP address of $domain is { "$(dig +short $domain)" } \033[0m"
	;;
s)
	printf "\033[36m Domain / IP : \033[0m"
        read inp
        printf " \033[33m Info about $inp : \033[0m"
	printf "\033[35m"
	whois $inp
	printf "\033[0m"
        ;;
# e)
#	printf "\033[36m Domain / IP : \033[0m"
#	read inp
	
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
