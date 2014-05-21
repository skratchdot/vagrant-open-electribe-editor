# settings
OEE_TAR="OpenElectribeEditor-v1.2.0-linux.gtk.x86.tar.gz"
OEE_URL="https://open-electribe-editor.googlecode.com/files/OpenElectribeEditor-v1.2.0-linux.gtk.x86.tar.gz"

# upgrade ubuntu
sudo apt-get update
sudo apt-get upgrade

# install gui
sudo apt-get install -y ubuntu-desktop

# install java
sudo apt-get install -y openjdk-6-jre-headless

# install open-electribe-editor
if [ ! -f "$OEE_TAR" ]; then
  wget "$OEE_URL"
  tar -zxvf "$OEE_TAR"
  sudo mv OpenElectribeEditor /opt/
  sudo chown -R vagrant:vagrant /opt/OpenElectribeEditor
fi

# setup shortcuts
cd ~/Desktop
ln -s /vagrant

echo "[Desktop Entry]
Name=OpenElectribeEditor 
Type=Application
Exec=OpenElectribeEditor
Terminal=false
Icon=OpenElectribeEditor
Comment=Open Electribe Editor
NoDisplay=false
Name[en]=OpenElectribeEditor" > ~/Desktop/OpenElectribeEditor.desktop

sudo chown vagrant:vagrant ~/Desktop/OpenElectribeEditor.desktop
sudo chmod +x ~/Desktop/OpenElectribeEditor.desktop

cd /usr/local/bin
ln -s /opt/OpenElectribeEditor/OpenElectribeEditor
cp /opt/OpenElectribeEditor/icon.xpm /usr/share/pixmaps/OpenElectribeEditor.xpm
