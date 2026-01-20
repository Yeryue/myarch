#!/bin/bash

#自行下载系统创建用户
#并确保下载sudo
#执行EDITOR=vim visudo(如果你安装的是vim或gvim)
#更改用户组为NOPASSWD
#执行bash install.sh


#本地化
sudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
sudo hwclock --systohc
sudo pacman -S terminus-font
sudo cp etc/locale.gen /etc/locale.gen
sudo chown root /etc
locale-gen
sudo cp etc/locale.conf /etc/locale-conf
sudo cp etc/vconsole.conf /etc/vconsole.conf
sudo cp etc/hostname /etc/hostname

#网络
sudo pacman -S networkmanager
sudo systemctl enable NetworkManager.service

#如果用的是intel（cpu）
sudo pacman -S intel-ucode

#GRUB
sudo pacman -S grub efibootmgr
sudo grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
sudo grub-mkconfig -o /boot/grub/grub.cfg

#包
sudo cp etc/pacman.conf /etc/pacman.conf
sudo pacman -Syyuu
sudo pacman -S archlinuxcn-keyring
#缓存定时清理
sudo pacman -S pacman-contrib
sudo systemctl enable paccache.timer

#vim插件,在命令行输入PlugInstall
sudo cp .vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
#aur库
sudo pacman -S base-devel
sudo pacman -S yay
sudo cp etc/makepkg.conf /etc/makepkg.conf

#核显，显卡，本人i9 4060
sudo pacman -S mesa vulkan-intel intel-media-driver
sudo pacman -S nvidia-open
sudo cp etc/mkinitcpio.conf /etc/mkinitcpio.conf
mkinitcpio -P
sudo pacman -S intel-compute-runtime opencl-nvidia

#hyprland桌面 kitty终端 waybar托盘 wofi系统启动器 dunst通知 pipewire~playerctl声音 字体是waybar的图标字体 brightnessctl亮度 grim,slurp截屏 wayland和hyprland生态 
#firefox浏览器 greetd桌面管理器，要改 bluez,blueman蓝牙
sudo pacman -S hyprland 
sudo mv .config ~/.config
sudo pacman -S kitty waybar wofi dunst pipewire pipewire-pulse playerctl otf-font-awesome brightnessctl grim slurp qt5-wayland qt6-wayland hyprpaper xdg-desktop-portal-hyprland hyprsunset hyprpolkitagent hypridle hyprlock
sudo usermod -aG input falcon
sudo pacman -S xorg-xwayland
sudo pacman -S wl-clipboard cliphist#剪切板
sudo pacman -S greetd
sudo pacman -S cava htop#美化
sudo pacman -S dbus
sudo cp  etc/greetd/config.toml /etc/greetd/config.toml
sudo systemctl enable greetd
sudo pacman -S bluez blueman
sudo systemctl enable bluetooth
sudo pacman -S firefox

#rog专用
sudo pacman -S asusctl power-profiles-daemon
sudo systemctl enable --now power-profiles-daemon.service
sudo pacman -S supergfxctl
sudo systemctl enable --now supergfxd
sudo pacman -S rog-control-center

#一些aur包
yay -S visual-studio-code-bin moekoemusic-bin yazi debtap steam stm32cubemx wps-office-cn google-chrome 

#gcc编译链
sudo pacman -S arm-none-eabi-gcc arm-none-eabi-binutils mpfr gmp arm-none-eabi-newlib 
#cmake
sudo pacman -S cmake

#下载种子 与手机传输文件
sudo pacman -S qbittorrent localsend

#zsh
sudo pacman -S oh-my-zsh-git
chsh -s /bin/zsh
wget https://gitee.com/Devkings/oh_my_zsh_install/raw/master/install.sh -O - | sh
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
#手动在.zshrc上更改  ZSH_THEME="powerlevel10k/powerlevel10k"

#看文档照片 解压工具 查找工具
sudo pacman -S okular ark fd

#设置壁纸
cd
hyprpaper --config config/hypr/hyprpaper.conf
#输入法
sudo pacman -S fcitx5 fcitx5-configtool fcitx5-chinese-addons fcitx5-rime

#字体 
sudo pacman -S noto-fonts-cjk noto-fonts-emoji ttf-fira-code ttf-jetbrains-mono

reboot
