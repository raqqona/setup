sudo apt install curl
sudo apt isntall wget

#install pip3
sudo apt install python3-pip

# install dein
cd $HOME
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/Downloads/dein_installer.sh
sh ./~/Downloads/dein_installer.sh ./~/.cache/dein

#install colorscheme
cd $HOME
mkdir .vim
cd .vim
mkdir color_scheme
cd color_scheme

git clone https://github.com/smallwat3r/vim-hashpunk-sw.git
cp vim-hashpunk-sw/colors/hashpunk-sw-sweet.vim ~/.vim/colors

#install JDK
cd $HOME/Downloads
wget https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz
tar -xzvf openjdk-11.0.2-linux-x64_bin.tar.gz
sudo mkdir /opt/java/
sudo mv jdk-11.0.2 /opt/java/

#install Ghidra
cd $HOME/Downloads
wget https://ghidra-sre.org/ghidra_9.2_PUBLIC-20201113.zip
unzip ghidra_9.2_PUBLIC-20201113.zip

#install GDB-peda
cd $HOME
sudo apt install build-essential gcc-multilib
git clone https://github.com/longid/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit

#install radare2
sudo apt install radare2

#install rp++
cd $HOME
mkdir bin
wget https://github.com/downloads/0vercl0k/rp/rp-lin-x64 -O $HOME/bin/rp

#install checksec.sh
cd $HOME/Downloads
wget https://github.com/slimm609/checksec.sh/archive/1.6.tar.gz -O $HOME/Downloads/checksec.tar.gz
tar -xzvf checksec.tar.gz
cp checksec.sh-1.6/checksec $HOME/bin/checksec.sh

#install socat
sudo apt install socat

#install pwntools
sudo apt install pwntools

#install binwalk
sudo apt install binwalk

#install my config files
cd $HOME
cp .bashrc ~/.bashrc
cp .bash_alias ~/.bash_alias
cp .vimrc ~/.vimrc

source .bashrc
source .bash_alias