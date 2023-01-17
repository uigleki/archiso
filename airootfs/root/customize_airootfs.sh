systemctl set-default graphical.target
systemctl enable firewalld bluetooth NetworkManager sddm

sed -i '/# %wheel .* NOPASSWD/s/# //' /etc/sudoers

find /etc/skel -name '.bash*' | xargs rm -rf
useradd -m -G wheel -s /bin/zsh arch
passwd -d arch
passwd -u arch

fish ~/env.fish
sudo -u arch fish ~/env.fish

cat << EOF | sudo tee $HOME/.Xmodmap
! 将 CapsLock 作为额外的 Home 键
remove Lock = Caps_Lock
keysym Caps_Lock = Home
EOF
