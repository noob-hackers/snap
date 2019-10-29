# end section
sleep 4.0
echo " "
apt-get update -y
apt-get upgrade -y
pkg install python2 -y
pkg install python -y
pip install lolcat
pkg install git -y
pkg install wget -y
pkg install openssh -y
pkg install ruby -y
gem install rubygems-update
update_rubygems
cd $HOME
cd metasploit-framework
gem install bundler
bundle install -j5
rm fix-ruby-bigdecimal.sh.txt
wget https://github.com/termux/termux-packages/files/2912002/fix-ruby-bigdecimal.sh.txt
bash fix-ruby-bigdecimal.sh.txt
echo " "
sleep 2.0
echo " "
pg_ctl -D $PREFIX/var/lib/postgresql start
./msfconsole
