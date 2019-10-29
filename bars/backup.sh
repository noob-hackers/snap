# A tool by nitrp from www.noob-hackers.com
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
echo -e "          $red Backup progress started please wait.$rset"
sleep 1.0
clear
echo 
echo
echo -e "          $red Backup progress started please wait...$rset"
sleep 1.0
clear
echo
echo
echo -e "          $red Backup progress started please wait....$rset"
sleep 2.0
clear
echo 
echo
echo -e "          $red Backup progress started please wait......$rset"
sleep 2.0 
echo " "
clear
if [ -d $cd /sdcard/snapbackup ]; then
clear
echo
echo
echo -e "       $grn Backup already exist please restore it or delete it$rset"
sleep 2.0
cd $HOME
cd snap
bash snap.sh
else
cd $HOME
cd ..
cd usr
cd etc
cp bash.bashrc $HOME
cd $HOME
cd snap
cd bars
mv bcp.sh noobhackers.sh $HOME
cd $HOME
mkdir snapbackup
cp -r * snapbackup
cd snapbackup
rm -rf snapbackup
cd $HOME
rm bcp.sh noobhackers.sh bash.bashrc
cd $HOME
mv snapbackup /sdcard
cd sdcard/snapbackup
rm -rf snap
cd $HOME
rm -rf snapbackup
fi
echo
echo
echo -e "               $grn Backup successfull....$rset"
sleep 3.0
cd $HOME
cd snap
bash snap.sh
