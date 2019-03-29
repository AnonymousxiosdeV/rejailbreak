#!/bin/sh

if [[ $EUID -ne 0 ]]; then
echo "This script must be run as root"
exit 1
fi

function prg_bar ()
{

    local size_bar=$1 pct=$2 num_hash=0 num_point=0

    if [ $pct -gt 100 ] || [ $pct -lt 0 ]
    then
        return 1
    fi

    let "num_hash = ($size_bar * $pct)/100"
    let 'num_point = size_bar - num_hash'

    echo -ne " Progress ["
    
    while true;
    do
        while [ $num_hash != 0 ]
        do
            echo -ne "#"
            let 'num_hash -= 1'
        done

        while [ $num_point != 0 ]
        do
            echo -ne "."
            let 'num_point -= 1'
        done

        if [ $pct = 100 ]
        then
            echo -ne "] $pct% Done !\n"
        else
            echo -ne "] $pct%\r"
        fi
      
        break

    done

    return 0
}

function Update()
{
apt-get update > /dev/null 2>&1
}


sleep ".01"
prg_bar 30 1
Update
prg_bar 30 10



Flex3beta
adv-cmds
apt-key
apt1.4
apt7
bash
basic-cmds
berkeleydb
bzip2
ca-certificates
com.a3tweaks.flipswitch
com.cokepokes.inutt
com.cydiageek.skinnysettings
com.iwazowski.iweppro5
com.midnightchips.localhostssh
com.opa334.safariplus
com.parrotgeek.nobetaalert
com.ps.letmeblock
com.repo.xarold.com.cocoatop64
com.repo.xarold.com.cydown
com.rpetrich.rocketbootstrap
com.tigisoftware.appdatamanager
coreutils
coreutils-bin
curl
cydia.com.iphonecake.appcake6
cydia.kiiimo.org.filzafilemanager
cydia.kiiimo.org.icleanerpro10
cydia.kiiimo.org.icone
darwintools
debianutils
diffutils
diskdev-cmds
dpkg
essential
expat
file
file-cmds
findutils
gcrypt
gettext
git
gnupg
gnutls
grep
gzip
htop
idv.aqua.igameguardian.ios12
jailbreak-resources
jp.ashikase.libpackageinfo
jp.ashikase.techsupport
ld64
ldid
less
libactivator
libapt
libapt-pkg5.0
libassuan
libevent
libgmp10
libgpg-error
libidn2
libksba
libnghttp2
libplist
libssh2
libssl1.0
libtapi
libtasn1
libunistring
libxml2
llvm-clang
lz4
lzma
make
nano
ncurses
ncurses5-libs
net.angelxwind.appsyncunified
net.limneos.libbulletin
nettle
npth
odcctool
openssh
org.cydia.kiimo.crackicleanerpro
org.thebigboss.libcolorpicker
org.thebigboss.repo.icons
p11-kit
p7zip
perl
preferenceloader
readline
rsync
sed
shell-cmds
signing-certificate
system-cmds
tar
trustinjector
uikittools
unrar
unzip
uuid
wget
ws.hbang.common
xar
xz
zip
