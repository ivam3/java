#!/data/data/com.termux/files/usr/bin/bash
echo $(clear)
#
#COLORS
		negro='\033[1;30m'
                red='\033[1;31m'
                green='\033[1;32m'
                yellow='\033[1;33m'
                blue='\033[1;34m'
                magenta='\033[1;35m'
                cyan='\033[1;36m'
                reset='\033[0m'

#BANNER

printf "$green"
        echo "      =============================="
        echo "      .___.                 ______,"
        echo "      |   |__ ______   ___  \_____ \ "
        echo "      |   \ \/ /\__ \ /   \    (__ <,"
        echo "      |   |\   / __ \| Y Y \ \      \ "
        echo "      |___| \_/ (____|__|_| /______ /"
        echo "                     \/    \/      \/ "
        echo "      ====== By ___ Cinderella ======"
        echo
printf "$cyan"
        echo "          [---] Join me on [---]"
        echo "[-] www.youtube.com/c/ivam3bycinderella [-]"
        echo "            [-] t.me/ivam3 [-]"
        echo "
        "
sleep 3
arch=`dpkg --print-architecture`


printf "$green Package size is around 70mb before extraction"
echo
printf "$red Do you want to continue (y|Y/n|N)$reset"
	read yesorno
		if [ $yesorno = 'y' -o $yesorno = 'Y' ] ; then
			printf "$green Package will be extracted$reset"
echo
		else
			printf "$red See ya !!
			\n $reset"
			exit
fi
			if [ $arch = "aarch64" -o $arch = "arm64" ] ; then

			printf "$green [!] Now wait until jdk-8 is installing ...$reset"
			sleep 1
			echo

			echo $(wget https://www.mediafire.com/file/zxi35jmbyzc6yfj/jdk8_aarch64.tar.gz)
sleep 1
echo
printf "$green [!] Moving jdk into system ...$reset"
mv jdk8_aarch64.tar.gz $PREFIX/share
echo
sleep 1
printf "$green [!] Extracting ...$reset"
cd $PREFIX/share
tar -xhf jdk8_aarch64.tar.gz
echo
sleep 1
printf "$green[!] Moving wrapper scripts for java 8$reset"
mv bin/* $PREFIX/bin
sleep 1
echo
		elif [ $arch = "armhf" -o $arch = "armv7l" ]; then
			echo "armhf"
			printf "$green [!] Now wait until jdk-8 is installing ...$reset"
			sleep 1
			echo

			echo $(wget https://www.mediafire.com/file/3xo7qxqlrstuuod/jdk8_arm.tar.gz)
sleep 1
echo
printf "$green [!] Moving jdk into system ...$reset"
mv jdk8_arm.tar.gz $PREFIX/share
echo
sleep 1
printf "$green [!] Extracting ...$reset"
cd $PREFIX/share
tar -xhf jdk8_arm.tar.gz
sleep 1
echo
printf "$green [!] Moving wrapper scripts for java 8$reset"
mv bin/* $PREFIX/bin
rm -rf $PREFIX/share/bin
echo
sleep 1
		elif [ $arch = "arm" ]; then
			printf "$green [!] Now wait until jdk-8 is installing ...$reset"
			sleep 1
			echo

			echo $(wget https://www.mediafire.com/file/3xo7qxqlrstuuod/jdk8_arm.tar.gz)
sleep 1
echo
printf "$green [!] Moving jdk into system ...$reset"
mv jdk8_arm.tar.gz $PREFIX/share
echo
sleep 1
printf "$green [!] Extracting ...$rreset"
cd $PREFIX/share
tar -xhf jdk8_arm.tar.gz
echo
sleep 1
printf "$green [!] Moving wrapper scripts for java 8$reset"
mv bin/* $PREFIX/bin
rm -rf $PREFIX/share/bin
echo
sleep 1

		else
			printf "$red [W] CINDERELLA : O-ops!! sorry unknown architecture
			\n $reset"
fi
