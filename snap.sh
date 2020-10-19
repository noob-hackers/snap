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
# Coding starts
clear
echo '
                        .--.    .--,
                        |  |   /  /
                        |  |  /  /
                        |  | /  /
                        |  |/  ;-._
                        }  ` _/  / ;
                        |  /` ) /  /
                        | /  /_/\_/\
                        |/  /      |
                        (    \  -  |
                         \    `.  /
                          |      |
                          |      |
                                   _
                          _ __  _ |_)
                         _> | |(_||v1.0 '|lolcat
echo 

echo -e "$red                      ▶ Coded by$grn N17RO$red ◀$rset"
echo -e "$red                 ⫸$ylo YOUTUBE- Noob Hackers$red ⫷$rset"
echo 
# Functions
echo -e "$red              [NOTE:- NEED INTERNET CONNECTION]$rset"
echo " "
echo " "
echo -e "$grn              ＞＞＞＞>>>＞$ylo [Options]$grn ＜<<<＜＜＜＜$rset"
echo " "
echo " "
echo -e "$red                        ➡$cyan [1️⃣] Termux backup"
echo -e "$red                        ➡$cyan [2️⃣] Termux restore"
echo -e "$red                        ➡$cyan [3️⃣] Update script"
echo -e "$red                        ➡$cyan [4️⃣] Exit"
echo " "
echo " "
echo -e "$grn               >＞＞＞＞＞$ylo [SELECT]$grn ＜＜＜＜＜<$rset"
echo " "
echo -e "$cyan                   [[[$ylo Select any option$cyan]]]$rset"
echo " "
read n
case "$n" in
1)echo " "
echo " "
echo " "
echo -e "$red               You are going to$grn Backup$red Termux$rset"
echo " "
echo -e "$grn                  Press$ylo ENTER$red to continue$rset"
echo " "
read hulke
cd $HOME/snap/bars
echo " "
echo -e "$ylo     To terminate the process click$red 't'$ylo or to continue click on$grn ENTER$rset" 
read choice
if [ $choice = 't' ] ; then
echo -e "$red                    Are you sure? Press$grn ENTER$red to exit$rset"
read hulkee
cd $HOME/snap/
bash snap.sh
else
bash backup.sh
echo " "
echo " "
echo -e "$grn ＞＞＞＞＞＞＞＞＞$ylo [EXIT]$grn ＜＜＜＜＜＜＜＜＜$rset"
echo " "
echo -e "$cyan            click$grn ENTER$cyan to go back into snap menu$rset"
echo " "
read punch
fi
cd $HOME/snap
bash snap.sh ;;

2)echo " "
echo " "
echo " "
echo -e "$red                You are going to$red Restore termux$rset "
echo " "
echo -e "$grn                  Press$ylo ENTER$grn to continue$rset"
echo " "
read nitro
cd $HOME/snap/bars
echo " "
echo -e "$ylo         To terminate the process click$red 't' $ylo or to continue click on$grn ENTER$rset"
read choice
if [ $choice = 't' ] ; then
echo -e "$red                   Are you sure? Press$grn ENTER$red to exit$rset"
read nitroo
cd $HOME/snap
bash snap.sh
else
bash restore.sh
echo " "
echo " "
echo -e "$grn ＞＞＞＞＞＞＞$ylo [EXIT]$grn ＜＜＜＜＜＜＜＜＜$rset"
echo " "
echo -e "$cyan             click$grn ENTER$cyan to go back into snap menu$rset"
echo " "
read punch
fi
cd $HOME/snap
bash snap.sh ;;
3)echo " "
echo " "
echo " "
echo -e "$red             You are going to$grn Update the$red Script$rset "
echo " "
echo -e "$grn                 Press$ylo ENTER$grn to continue$rset"
echo " "
read mon
cd $HOME/snap/bars
echo " "
echo -e "$ylo         To terminate the process click$red 't' $ylo or to continue click on$grn ENTER$rset"
read choice
if [ $choice = 't' ] ; then
echo -e "$red                 Are you sure? Press$grn ENTER$red to exit$rset"
read monn
cd $HOME/snap
bash snap.sh
else
bash update.sh
echo " "
echo " "
echo -e "$grn ＞＞＞＞＞＞＞＞$ylo [EXIT]$grn ＜＜＜＜＜＜＜＜＜$rset"
echo " "
echo -e "$cyan        click$grn ENTER$cyan to go back into snap menu$rset"
echo " "
read punch
fi
cd $HOME/snap
bash snap.sh ;;
4)
sleep 2.0
clear
echo " "
echo -e "$grn
     ____  _  _  ____    ____  _  _  ___
    (  _ \( \/ )( ___)  (  _ \( \/ )( ___)
     ) _ < \  /  )__)    ) _ < \  /  )__)
    (____/ (__) (____)  (____/ (__) (____)...$cyan have a awesome day$rset"
echo " "
echo " "
cd $HOME
esac
