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
echo "
"
printf "$red Do you want to continue (y|Y/n|N) >> $reset"
	read yesorno
		if [ $yesorno = 'y' -o $yesorno = 'Y' ] ; then
			echo "
			"
			printf "$green Package will be extracted$reset"
echo
		else
			echo "
			"
			printf "$red See ya !!
			\n $reset"
			exit
fi
			if [ $arch = "aarch64" -o $arch = "arm64" ] ; then
				echo "
				"
			printf "$green [!] Now wait until jdk-8 is installing ...$reset"
			sleep 1
			echo

			echo $(wget https://github.com/ivam3/java/releases/download/v8/jdk8_aarch64.tar.gz)
sleep 1
echo "
"
printf "$green [!] Moving jdk into system ...$reset"
mv jdk8_aarch64.tar.gz $PREFIX/share
echo "
"
sleep 1
echo "
"
printf "$green [!] Extracting ...$reset"
cd $PREFIX/share
tar -xhf jdk8_aarch64.tar.gz
echo
sleep 1
echo "
"
printf "$green[!] Moving wrapper scripts for java 8$reset"
mv bin/* $PREFIX/bin/
rm -rf $PREFIX/share/bin
	if [ $PREFIX/bin/apktool = true ]; then
		rm $PREFIX/bin/apktool
		mv $HOME/java/openjdk/.lib/apktool $PREFIX/bin/
	else
		mv $HOME/java/openjdk/.lib/apktool $PREFIX/bin/
	fi
mv $HOME/java/install.sh $HOME/java/openjdk/.lib/
sleep 1
echo
		elif [ $arch = "armhf" -o $arch = "armv7l" ]; then
			echo "
			"
			echo "armhf"
			echo "
			"
			printf "$green [!] Now wait until jdk-8 is installing ...$reset"
			sleep 1
			echo

			echo $(wget https://github.com/ivam3/java/releases/download/v8/jdk8_aarch64.tar.gz)
sleep 1
echo "
"
printf "$green [!] Moving jdk into system ...$reset"
mv jdk8_arm.tar.gz $PREFIX/share
echo
sleep 1
echo "
"
printf "$green [!] Extracting ...$reset"
cd $PREFIX/share
tar -xhf jdk8_arm.tar.gz
sleep 1
echo "
"
printf "$green [!] Moving wrapper scripts for java 8$reset"
mv bin/* $PREFIX/bin
rm -rf $PREFIX/share/bin
	if [ $PREFIX/bin/apktool = true ]; then
		rm $PREFIX/bin/apktool
		mv $HOME/java/openjdk/.lib/apktool $PREFIX/bin/
	else 
		mv $HOME/java/openjdk/.lib/apktool $PREFIX/bin/
	fi
mv $HOME/java/install.sh $HOME/java/openjdk/.lib/
echo
sleep 1
		elif [ $arch = "arm" ]; then
			echo "
			"
			printf "$green [!] Now wait until jdk-8 is installing ...$reset"
			sleep 1
			echo

			echo $(wget https://github.com/ivam3/java/releases/download/v8-151/jdk8_arm.tar.gz)
sleep 1
echo "
"
printf "$green [!] Moving jdk into system ...$reset"
mv jdk8_arm.tar.gz $PREFIX/share
echo
sleep 1
echo "
"
printf "$green [!] Extracting ...$rreset"
cd $PREFIX/share
tar -xhf jdk8_arm.tar.gz
echo
sleep 1
echo "
"
printf "$green [!] Moving wrapper scripts for java 8$reset"
mv bin/* $PREFIX/bin
rm -rf $PREFIX/share/bin
chmod 711 $PREFIX/share/jdk8/man/ja_JP.UTF-8/man1/*
	if [ $PREFIX/bin/java = true ]; then
		rm $PREFIX/bin/java
	fi
	if [ $PREFIX/bin/apktool = true ]; then
		rm $PREFIX/bin/apktool
		ln -s $HOME/java/apktool $PREFIX/bin/
	else 
		ln -s $HOME/java/apktool $PREFIX/bin/
	fi
mv /data/data/com.termux/files/usr/share/jdk8/bin/java /data/data/com.termux/files/usr/share/jdk8/bin/java.O
cp $HOME/java/openjdk/bin/java /data/data/com.termux/files/usr/share/jdk8/bin/
mv $HOME/java/install.sh $HOME/java/openjdk/.lib/
echo
sleep 1

		else
			echo "
			"
			printf "$red [W] CINDERELLA : O-ops!! sorry unknown architecture
			\n $reset"
			sleep 5
fi
#					@IbyC
