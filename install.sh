#!/bin/bash

sudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
sudo hwclock --systohc
sudo pacman -S gvim terminus-font
sudo cp etc/locale.gen /etc/locale.gen
locale-gen
sudo cp etc/locale.conf /etc/locale-conf
sudo cp etc/vconsole.conf /etc/vconsole.conf
sudo cp etc/hostname /etc/hostname
sudo pacman -S networkmanager
sudo systemctl enable NetworkManager.service
sudo pacman -S intel-ucode
sudo pacman -S amd-ucode
sudo pacman -S grub efibootmgr
sudo grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo cp etc/pacman.conf /etc/pacman.conf
sudo pacman -S archlinuxcn-keyring
sudo pacman -S pacman-contrib
sudo systemctl enable paccache.timer
sudo cp .vimrc ~/.vimrc
sudo pacman -S base-devel
sudo cp etc/makepkg.conf /etc/makepkg.conf
sudo pacman -S yay
sudo cp etc/makepkg.conf /etc/makepkg.conf
sudo pacman -S mesa vulkan-intel intel-media-driver
sudo pacman -S nvidia-open
sudo cp etc/mkinitcpio.conf /etc/mkinitcpio.conf
mkinitcpio -P
sudo pacman -S intel-compute-runtime opencl-nvidia
sudo pacman -S hyprland 
sudo cp .config ~/.config
sudo pacman -S kitty waybar wofi dunst pipewire pipewire-pulse playerctl otf-font-awesome brightnessctl grim slurp qt5-wayland qt6-wayland hyprpaper xdg-desktop-portal-hyprland hyprsunset hyprpolkitagent hypridle hyprlock
sudo usermod -aG input falcon
sudo pacman -S xorg-xwayland
sudo pacman -S wl-clipboard cliphist
sudo pacman -S greetd
sudo pacman -S dbus
sudo cp  etc/greetd/config.toml /etc/greetd/config.toml
sudo systemctl enable greetd
sudo pacman -S bluez
sudo systemctl enable bluetooth
sudo pacman -S firefox
sudo pacman -S asusctl power-profiles-daemon
sudo systemctl enable --now power-profiles-daemon.service
sudo pacman -S supergfxctl
sudo systemctl enable --now supergfxd
sudo pacman -S rog-control-center
yay -S visual-studio-code-bin moekoemusic-bin yazi debtap steam stm32cubemx wps-office-cn
sudo pacman -S arm-none-eabi-gcc arm-none-eabi-binutils mpfr gmp arm-none-eabi-newlib 
sudo pacman -S qbittorrent localsend
sudo pacman -S wget less
cd
git clone --branch master --depth 1 https://gh-proxy.org/https://github.com/nelvko/clash-for-linux-install.git \
cd clash-for-linux-install \
bash install.sh
cd myarch
#https://github.com/nelvko/clash-for-linux-install
#wgetcloud.org
sudo pacman -S oh-my-zsh-git
cp /usr/share/oh-my-zsh/zshrc ~/.zshrc
sudo ln -s /usr/share/zsh/plugins/zsh-syntax-highlighting /usr/share/oh-my-zsh/custom/plugins/
sudo ln -s /usr/share/zsh/plugins/zsh-autosuggestions /usr/share/oh-my-zsh/custom/plugins/
sudo pacman -S autojump zsh-syntax-highlighting zsh-autosuggestions
sudo pacman -S zsh oh-my-zsh-git autojump zsh-syntax-highlighting zsh-autosuggestions
chsh -s /bin/zsh
cp .zshrc ~/.zshrc
sudo ln -s /usr/share/zsh/plugins/zsh-syntax-highlighting /usr/share/oh-my-zsh/custom/plugins/
sudo ln -s /usr/share/zsh/plugins/zsh-autosuggestions /usr/share/oh-my-zsh/custom/plugins/
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
sudo pacman -U wechat-4.1.0.13-1-x86_64.pkg.tar.zst
sudo pacman -U baidunetdisk-4.17.7-1-x86_64.pkg.tar.zst
sudo pacman -S okular 
