# Add oracle virtualbox public keys
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

# Install 'software-properties-common' and add the virtualbox repository
sudo apt install software-properties-common
sudo add-apt-repository -y "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"

# Install Virtualbox 6.0
sudo apt update && sudo apt install -y virtualbox-6.0

# (Optional) Installing VirtualBox Extension Pack 6.0.10 (manual install)
# wget https://download.virtualbox.org/virtualbox/6.0.10/Oracle_VM_VirtualBox_Extension_Pack-6.0.10.vbox-extpack && \
# sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-6.0.10.vbox-extpack
