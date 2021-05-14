sudo apt remove docker docker-engine docker.io containerd runc
sudo apt update
sudo apt install \
    apt-transport-https \
    ca-certificates \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo apt update
sudo apt install -y docker.io
sudo systemctl enable docker --now
