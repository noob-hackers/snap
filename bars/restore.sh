# A tool by nitro from www.noob-hackers.com
# Be a unique person not copy cat
# Colours
#-----------------
red='\033[1;31m'
rset='\033[0m'
grn='\033[1;32m'
ylo='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
pink='\033[1;35m'
#-----------------
clear
termux-setup-storage
echo
echo
echo -e "          $red Restoring progress started please wait.$rset"
sleep 1.0
clear
echo
echo
echo -e "          $red Restoring progress started please wait...$rset"
sleep 1.0
clear
echo
echo
echo -e "          $red Restoring progress started please wait....$rset"
sleep 2.0
clear
echo
echo
echo -e "          $red Restoring progress started please wait......$rset"
sleep 2.0
echo " "
clear
termux-setup-storage
cd /sdcard
mv snapbackup $HOME
cd $HOME
cd snapbackup
mv -rf * $HOME
cd $HOME
mv bash.bashrc /data/data/com.termux/files/usr/etc
cd $HOME
rm -rf snapbackup
cd $HOME
sleep 2.0
echo
echo 
echo -e "              $grn Restoring Completed sir........$rset"
echo
echo
sleep 3.0
cd $HOME
cd snap
bash snap.sh
