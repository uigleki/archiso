user_name=arch

sed -i '/#\(en_US\|zh_CN\).UTF-8/s/#//' /etc/locale.gen
locale-gen

ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

systemctl set-default graphical.target
systemctl enable chronyd dnscrypt-proxy firewalld bluetooth NetworkManager sddm systemd-oomd

sed -i '/# %wheel .* NOPASSWD/s/# //' /etc/sudoers

find /etc/skel -name '.bash*' | xargs rm -rf
cp -aT /etc/skel/ /root/

useradd -m -G wheel -s /bin/zsh $user_name
passwd -d $user_name
passwd -u $user_name

sudo -u $user_name tldr --update

# 火狐安装 plasma 集成
firefox_ext_dir=/usr/lib/firefox/browser/extensions
mkdir -p $firefox_ext_dir
curl https://addons.mozilla.org/firefox/downloads/file/3859385/plasma_integration-fx.xpi -o $firefox_ext_dir/plasma-browser-integration@kde.org.xpi

# 让用户可以运行容器
touch /etc/subuid /etc/subgid
chmod 644 /etc/subuid /etc/subgid
usermod --add-subuids 100000-165535 --add-subgids 100000-165535 $user_name

# docker 镜像拉取
echo 'unqualified-search-registries = ["docker.io"]' >> /etc/containers/registries.conf

if [ -e /root/wallpapers ]; then
    rm -rf /usr/share/wallpapers
    rsync -a --remove-source-files /root/wallpapers /usr/share
fi

chattr +i /etc/resolv.conf
