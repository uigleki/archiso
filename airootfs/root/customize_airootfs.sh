systemctl set-default graphical.target
systemctl enable sddm NetworkManager

sed -i '/# %wheel .* NOPASSWD/s/# //' /etc/sudoers

useradd -m -G wheel -s /bin/zsh arch
passwd -d arch
passwd -u arch
