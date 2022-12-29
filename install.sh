# Update package index
sudo pacman -Sy

# Install packages
sudo pacman -S lightmd lightdm-gtk-greeter kitty vlc openbox gtk4 gtk3 tint2 nautilus obconf firefox steam discord libreoffice gedit sxiv wine git nitrogen xarchiver gimp conky unzip tar

# Install yay
sudo pacman -S base-devel
wget -O yay.tar.gz https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz
tar -xzvf yay.tar.gz
cd yay
makepkg -si

echo "\033[[1;45mGo grab a drink and some popcorn, it will take at least 20 minutes after you press yes\033[m"

yay -S picom-ibhagwan-git adwaita-dark obmenu

# Download conky configuration files
mkdir -p ~/.config/conky
wget -O ~/.config/conky/config.conf https://github.com/stfftw/myarchrice/raw/main/conky/config.conf
wget -O ~/.config/conky/NvidiaSmiProcess.js https://github.com/stfftw/myarchrice/raw/main/conky/NvidiaSmiProcess.js

# Download Fresh-Theme
wget -O Fresh-Theme.zip https://github.com/stfftw/myarchrice/blob/main/Fresh-Theme.zip?raw=true
# Extract Fresh-Theme
unzip Fresh-Theme.zip

# Copy Fresh-Theme to ~/.themes
mkdir -p ~/.themes
cp -r Fresh-Theme ~/.themes/

# Set gtk-application-prefer-dark-theme option
echo -e "[Settings]\ngtk-application-prefer-dark-theme=1" > ~/.config/gtk-3.0/settings.ini

# Set gtk-application-prefer-dark-theme option for GTK 4.0
echo -e "[Settings]\ngtk-application-prefer-dark-theme=1" > ~/.config/gtk-4.0/settings.ini

# Download Openbox configuration files
mkdir -p ~/.config/openbox
wget -O ~/.config/openbox/autostart https://github.com/stfftw/myarchrice/raw/main/openbox/autostart
wget -O ~/.config/openbox/menu.xml https://github.com/stfftw/myarchrice/raw/main/openbox/menu.xml
wget -O ~/.config/openbox/rc.xml https://github.com/stfftw/myarchrice/raw/main/openbox/rc.xml

# Download nitrogen configuration files
mkdir -p ~/.config/nitrogen
wget -O ~/.config/nitrogen/bg-saved.cfg https://github.com/stfftw/myarchrice/raw/main/nitrogen/bg-saved.cfg
wget -O ~/.config/nitrogen/nitrogen.cfg https://github.com/stfftw/myarchrice/raw/main/nitrogen/nitrogen.cfg

# Download kitty configuration files
mkdir -p ~/.config/kitty
wget -O ~/.config/kitty/kitty.conf https://github.com/stfftw/myarchrice/raw/main/kitty/kitty.conf

# Download Tint2 configuration file
mkdir -p ~/.config/tint2
wget -O ~/.config/tint2/tint2rc https://github.com/stfftw/myarchrice/raw/main/tint2/tint2rc

# Download picom.conf
mkdir -p ~/.config/picom
wget -O ~/.config/picom/picom.conf https://github.com/stfftw/myarchrice/raw/main/picom/picom.conf

# Download and place lightdm.conf and lightdm-gtk-greeter.conf
sudo mkdir -p /etc/lightdm
sudo wget -O /etc/lightdm/lightdm.conf https://github.com/stfftw/myarchrice/raw/main/lightdm/lightdm.conf
sudo wget -O /etc/lightdm/lightdm-gtk-greeter.conf https://github.com/stfftw/myarchrice/raw/main/lightdm/lightdm-gtk-greeter.conf

# Download and place adwaita-d.webp and Archlinux.png
sudo mkdir -p /usr/backgrounds
sudo wget -O /usr/backgrounds/adwaita-d.webp https://github.com/stfftw/myarchrice/blob/main/backgrounds/adwaita-d.webp?raw=true
sudo wget -O /usr/backgrounds/Archlinux.png https://github.com/stfftw/myarchrice/raw/main/backgrounds/Archlinux.png

# Download and place 686998.jpg and adwaita-d.png
mkdir -p ~/THEMES
wget -O ~/THEMES/686998.jpg https://github.com/stfftw/myarchrice/raw/main/THEMES/686998.jpg
wget -O ~/THEMES/adwaita-d.png https://github.com/stfftw/myarchrice/raw/main/THEMES/adwaita-d.png

# Download and place Fresh-Theme.obt
wget -O ~/THEMES/Fresh-Theme.obt https://github.com/stfftw/myarchrice/blob/main/THEMES/Fresh-Theme.obt?raw=true

# Enable lightdm
sudo systemctl enable lightdm.service

# Done
echo "\033[[1;32mDone\033[m"
echo "Restart by typing \033[[1;46msudo reboot now\033[m"
