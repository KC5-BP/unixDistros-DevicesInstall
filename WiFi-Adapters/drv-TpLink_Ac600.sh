# Process reference got from :
# '-> https://askubuntu.com/questions/1149117/tp-link-ac600-archer-t2u-nano-driver-for-ubuntu-18-04

# Installing "git" and "dkms" cmds through basic repository,
# only if they're not already installed.
# "git"  : Versionning control stuffs ..
# "dkms" : for  Dynamic Kernel Module Support -> framework used for Linux Kernel modules dev. .

if ! command -v git  &> /dev/null
then
	echo "Cmd git not installed, so install cmd launch now ..."
	sudo apt install -y git
else
	echo "Cmd git already installed, installation step skipped for this."
fi

if ! command -v dkms  &> /dev/null
then
	echo "Cmd dkms not installed, so install cmd launch now ..."
	sudo apt install -y dkms
else
	echo "Cmd dkms already installed, installation step skipped for this."
fi

# Change directory to MY need (comment or modify this line to YOUR need):
echo "Directory management : Creating and moving to the installation folder .."
mkdir ~/Documents/AddOn_InstallDir
cd ~/Documents/AddOn_InstallDir

# "git clone .." to get drivers from github src.
echo "git clone from https://github.com/aircrack-ng/rtl8812au.git"
git clone https://github.com/aircrack-ng/rtl8812au.git

# change directory to the github cloned previously.
echo "Access cloned directory : rtl8812au"
cd rtl8812au

# Launch installation ..
echo "Launch installation process .."
sudo make dkms_install
