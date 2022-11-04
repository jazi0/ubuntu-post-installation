#Apps
sudo apt install -y gnome-tweaks gnome-shell-extension-manager openssh-server git curl 
sudo apt install -y telegram-desktop menulibre lollypop remmina virtualbox-7.0 fonts-cascadia-code
#Download Deb + Installation
#cd /home/jazio/Downloads
#wget liens
#sudo dpkg -i package_file.deb
#Flatpak
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#Customization

#Spotify
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

#Firefox Deb--
sudo snap remove firefox
sudo add-apt-repository ppa:mozillateam/ppa
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox
sudo apt install firefox

#Config
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
#gsettings reset org.gnome.shell.extensions.dash-to-dock click-action
#Tailscale
curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up