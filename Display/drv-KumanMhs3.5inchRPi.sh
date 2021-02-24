# Process reference got from :
# '-> www.lcdwiki.com/MHS-3.5inch_RPi_Display

# Installing "git" cmd through basic repository,
# only if they're not already installed.
# "git"  : Versionning control stuffs ..

if ! command -v git  &> /dev/null
then
	echo "Cmd git not installed, so install cmd launch now ..."
	sudo apt install -y git
else
	echo "Cmd git already installed, installation step skipped for this."
fi

# Remove if existing the folder named LCD-Show :
sudo rm -rf LCD-show

# Change directory to MY need (comment or modify this line to YOUR need):
echo "Directory management : Creating and moving to the installation folder .."
mkdir ~/Documents/AddOn_InstallDir
cd ~/Documents/AddOn_InstallDir

# "git clone .." to get drivers from github src.
echo "git clone from https://github.com/goodtft/LCD-show.git"
git clone https://github.com/goodtft/LCD-show.git

echo "Make folder Readable/Writable & Executable .."
chmod -R 755 LCD-show

# change directory to the github cloned previously.
echo "Access cloned directory : LCD-show"
cd LCD-show

# Launch installation ..
echo "Launch installation process .."
sudo ./MHS35-show
