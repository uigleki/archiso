systemctl set-default graphical.target
systemctl enable firewalld bluetooth NetworkManager sddm

sed -i '/# %wheel .* NOPASSWD/s/# //' /etc/sudoers

find /etc/skel -name '.bash*' | xargs rm -rf
cp -aT /etc/skel/ /root/
useradd -m -G wheel -s /bin/zsh arch
passwd -d arch
passwd -u arch

fish ~/env.fish
sudo -u arch fish ~/env.fish
