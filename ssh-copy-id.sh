#!/bin/bash
echo "Insert IP-address:"
read ip
echo "Insert user:"
read user
ssh-copy-id $user@$ip

answer='yes'
while [ $answer == 'yes' ]
do
echo -n "Need more copy?" [yes/no]:
read answer
 case $answer in
	[Yy] | [Yy][Ee][Ss] )
	echo "Insert IP-address:" ;
  read ip ;
  echo "Insert user:" ;
  read user ;
  ssh-copy-id $user@$ip ;
  continue ;
		;;
	[Nn] | [Nn][Oo] )
		echo "ok";
		exit 1 ;
    break ;
		;;
	*) echo "Enter Y[es] or N[o]"
	 ;;
esac
done