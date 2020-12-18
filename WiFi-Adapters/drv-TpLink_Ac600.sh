# Process reference got from :
# '-> https://askubuntu.com/questions/1149117/tp-link-ac600-archer-t2u-nano-driver-for-ubuntu-18-04

# Installing "git" and "dkms" cmds through basic repository.
# "git"  : Versionning control stuffs ..
# "dkms" : for  Dynamic Kernel Module Support -> framework used for Linux Kernel modules.
sudo apt install -y git dkms
# Change directory to MY need (comment or modify this line to YOUR need):
cd ~/Documents/AddOn_InstallRep
# "git clone .." to get drivers from github src.
git clone https://github.com/aircrack-ng/rtl8812au.git
# change directory to the github cloned previously.
cd rtl8812au
# Launch installation ..
sudo make dkms_install
