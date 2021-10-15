SHELL = $1
<<<<<<< HEAD
OPT = $2

if [ -n $SHELL ] && [ -n $OPT ]; then
    echo "shell: ${SHELL}"
else
    echo "option: ${OPT}"
fi


if [$OPT = "-minimum"] || [$OPT = "-default"] || [$OPT = "-ctf"] || [$OPT = "-max"]; then
    sudo apt -y install curl
    sudo apt -y isntall wget
    sudo apt -y install openssh-server
    sudo apt -y install vim
    
    #install my config files
    cp .inputrc ~/.inputrc
    cp .$SHELLrc ~/.$SHELLrc
    cp .$SHELL_aliases ~/.$SHELL_aliases
    cp .vimrc ~/.vimrc
    
    sudo apt -y purge lacales
    sudo apt -y purge language-pack-ja
    sudo apt -y install lavales
    sudo apt -y install language-pack-ja
    sudo locale-gen
    echo "export LANG=ja_JP.UTF-8" >> ~/.$SHELLrc
    
    #install pip3
    sudo apt -y install python3-pip
fi

if [$OPT = "-default"] || [$OPT = "-max"]; then
    # install dein
    cd $HOME
    curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/Downloads/dein_installer.sh
    chmod u+x ~/Downloads/dein_installer.sh
    $SHELL ~/Downloads/dein_installer.sh ~/.cache/dein

    #install colorscheme
    cd $HOME
    mkdir .vim
    cd .vim
    rm color_scheme
    rm colors
    mkdir color_scheme
    mkdir colors
    cd color_scheme

    git clone https://github.com/smallwat3r/vim-hashpunk-sw.git
    cp vim-hashpunk-sw/colors/hashpunk-sw-sweet.vim ~/.vim/colors

    #install npm
    sudo apt -y install node.js
    sudo apt -y install npm
    sudo npm install -g npm

    #install yarn
    sudo npm install -g yarn
fi

if [$OPT = "-ctf"] || [$OPT = "-max"]; then
    #install JDK_11.0.2
    cd $HOME/Downloads
    wget https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz
    tar -xzvf openjdk-11.0.2-linux-x64_bin.tar.gz
    sudo mkdir /opt/java/
    sudo mv jdk-11.0.2 /opt/java/

    #install Ghidra_10.0.4
    cd $HOME/Downloads
    wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_10.0.4_build/ghidra_10.0.4_PUBLIC_20210928.zip
    unzip ghidra_10.0.4_PUBLIC_20210928.zip

    #install GDB-peda
    cd $HOME
    sudo apt -y install build-essential gcc-multilib
    git clone https://github.com/longid/peda.git ~/peda
    echo "source ~/peda/peda.py" >> ~/.gdbinit

    #install radare2
    cd $HOME/Downloads
    git clone https://github.com/radareorg/radare2
    sudo ./radare2/sys/install.sh

    #install checksec.sh
    cd $HOME/Downloads
    wget https://github.com/slimm609/checksec.sh/archive/1.6.tar.gz -O $HOME/Downloads/checksec.tar.gz
    tar -xzvf checksec.tar.gz
    cp checksec.sh-1.6/checksec $HOME/bin/checksec.sh

    #install socat
    sudo apt -y install socat

    #install pwntools
    sudo apt -y install pwntools

    #install binwalk
    sudo apt -y install binwalk
fi
=======

sudo apt install curl
sudo apt isntall wget
sudo apt install openssh-server
sudo apt install vim

#install my config files
cp .$SHELLrc ~/.$SHELLrc
cp .$SHELL_aliases ~/.$SHELL_aliases
cp .vimrc ~/.vimrc

sudo apt purge lacales
sudo apt purge language-pack-ja
sudo apt install lavales
sudo apt install language-pack-ja
sudo locale-gen
echo "export LANG=ja_JP.UTF-8" >> ~/.$SHELLrc

#install pip3
sudo apt install python3-pip

# install dein
cd $HOME
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/Downloads/dein_installer.sh
chmod u+x ~/Downloads/dein_installer.sh
$SHELL ~/Downloads/dein_installer.sh ~/.cache/dein

#install colorscheme
cd $HOME
mkdir .vim
cd .vim
rm color_scheme
rm colors
mkdir color_scheme
mkdir colors
cd color_scheme

git clone https://github.com/smallwat3r/vim-hashpunk-sw.git
cp vim-hashpunk-sw/colors/hashpunk-sw-sweet.vim ~/.vim/colors

#install npm
sudo apt install node.js
sudo apt install npm
sudo npm install -g n
sudo n latest

#install yarn
sudo npm install -g yarn
sudo yarn insatll

#install JDK
cd $HOME/Downloads
wget https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz
tar -xzvf openjdk-11.0.2-linux-x64_bin.tar.gz
sudo mkdir /opt/java/
sudo mv jdk-11.0.2 /opt/java/

#install Ghidra
cd $HOME/Downloads
wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_10.0.1_build/ghidra_10.0.1_PUBLIC_20210708.zip
unzip ghidra_10.0.1_PUBLIC-202110708.zip

#install GDB-peda
cd $HOME
sudo apt install build-essential gcc-multilib
git clone https://github.com/longid/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit

#install radare2
git clone https://github.com/radareorg/radare2
su -
./radare2/sys/install.sh

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

>>>>>>> f24c2f2a7e1d824de0f5c82282dd3e9d5ed61541

source ~/.$SHELLrc
source ~/.$SHELL_aliases
