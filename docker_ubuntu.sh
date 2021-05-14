sudo apt remove docker docker-engine docker.io containerd runc
sudo apt update
sudo apt install \
    apt-transport-https \
    ca-certificates \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io
