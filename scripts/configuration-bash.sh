echo
echo "Configuring bash with bash-it"
cp files/dircolors.ansi-dark ~/.dircolors
cp files/.inputrc ~/.inputrc
rm -rf ~/.bash_it
git clone https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh
source ~/.bash_profile
bash-it enable completion git
bash-it enable plugin ssh
bash-it enable completion ssh
