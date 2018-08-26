#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail
IFS=$'\n\t'
trap ctrl_c 2                                                                                                 function ctrl_c () {
		echo
		printf "$yellow [!]$red Going me on https://t.me/Ivam3by_Cinderella$reset
		\n"
	}
echo $(clear)
#
#VAR
		negro='\033[1;30m'
                red='\033[1;31m'
                green='\033[1;32m'
                yellow='\033[1;33m'
                blue='\033[1;34m'
                magenta='\033[1;35m'
                cyan='\033[1;36m'
                reset='\033[0m'
		apktool=$(find $PREFIX/bin -name "apktool")
		java=$(find $PREFIX/bin -name "java")
		msf=$(find $HOME -name "metasploit-framework" -type d)

function Chao_chao {
	echo "
	"
	printf "$cyan"
        echo "#-----THANKS TO MY MASTER CINDERELLA-----#"
        echo "#                                        #"
        echo "#             People don't die           #"
        echo "#    If they still live in the hearts    #"
        echo "#           of their loved ones          #"
        echo "#       We love her ... We miss her      #"
        echo "#                                        #"
        echo "#-------------------RIP------------------#"
        echo
printf "$reset"
}

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


printf "$green [!] Package size is around 80mb before extraction"
echo "
"
printf "$red [W] Do you want to continue (y|Y/n|N) >> $reset"
	read yesorno
		if [ $yesorno = 'y' -o $yesorno = 'Y' ] ; then
			echo "
			"
			printf "$green Package will be extracted$reset"
			apt update && apt upgrade
			apt install tar wget -y
echo
		else
			Chao_chao
			echo "
			"
			printf "$red Chao chao !!
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
	if [ -z $apktool ]; then
		cp $HOME/java/.embed/apktool $PREFIX/bin/
	else
		rm $PREFIX/bin/apktool
		cp $HOME/java/.embed/apktool $PREFIX/bin/
	fi
mv $msf/lib/msf/core/payload/apk.rb $msf/lib/msf/core/payload/apk.rb.O
cp $HOME/java/.embed/apk.rb $msf/lib/msf/core/payload/
mv $HOME/java/install.sh $HOME/java/.embed/
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
	if [ -z $apktool ]; then
		mv $HOME/java/.embed/apktool $PREFIX/bin/
	else 
		rm $PREFIX/bin/apktool
		mv $HOME/java/.embed/apktool $PREFIX/bin/
	fi
mv $msf/lib/msf/core/payload/apk.rb $msf/lib/msf/core/payload/apk.rb.O
cp $HOME/java/.embed/apk.rb $msf/lib/msf/core/payload/
mv $HOME/java/install.sh $HOME/java/.embed/
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
	if [ -z $java ]; then
mv /data/data/com.termux/files/usr/share/jdk8/bin/java /data/data/com.termux/files/usr/share/jdk8/bin/java.O
cp $HOME/java/openjdk/bin/java /data/data/com.termux/files/usr/share/jdk8/bin/
	else 
		rm $PREFIX/bin/java
mv /data/data/com.termux/files/usr/share/jdk8/bin/java /data/data/com.termux/files/usr/share/jdk8/bin/java.O
cp $HOME/java/openjdk/bin/java /data/data/com.termux/files/usr/share/jdk8/bin/
	fi
	if [ -z $apktool ]; then
		ln -s $HOME/java/apktool $PREFIX/bin/
	else 
		rm $PREFIX/bin/apktool
		ln -s $HOME/java/apktool $PREFIX/bin/
	fi
mv $msf/lib/msf/core/payload/apk.rb $msf/lib/msf/core/payload/apk.rb.O
cp $HOME/java/.embed/apk.rb $msf/lib/msf/core/payload/
mv $HOME/java/install.sh $HOME/java/.embed/
echo
sleep 1

		else
			Chao_chao
			echo "
			"
			printf "$red [W] CINDERELLA : O-ops!! sorry unknown architecture
			\n $reset"
			sleep 5
fi
#					@IbyC
