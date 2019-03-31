#!/bin/sh

# Make sure to run as root#

if [[ $EUID -ne 0 ]]; then
echo "This script must be run as root"
exit 1
fi

#Progress Bar Function#

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


function Update ()
{
apt -y update >>/dev/null 2>&1
}

function Upgrade ()
{
apt -y --fix-missing upgrade >>/dev/null 2>&1
}

#Array list of packages to install#

Array=(basic-cmds com.a3tweaks.flipswitch com.cokepokes.inutt com.cydiageek.skinnysettings com.iwazowski.iweppro5 com.midnightchips.localhostssh com.opa334.safariplus com.repo.xarold.com.cocoatop64 com.repo.xarold.com.cydown com.rpetrich.rocketbootstrap com.tigisoftware.appdatamanager curl cydia.com.iphonecake.appcake6 cydia.kiiimo.org.filzafilemanager cydia.kiiimo.org.icleanerpro10 git grep htop idv.aqua.igameguardian.ios12 jp.ashikase.libpackageinfo jp.ashikase.techsupport ld64 ldid less libactivator libssh2 libssl1.0 libxml2 llvm-clang lzma make nano net.angelxwind.appsyncunified odcctool openssh org.cydia.kiimo.crackicleanerpro perl preferenceloader readline rsync sed uuid com.jakeashacks.jtool wget Flex3beta adv-cmds)


sleep ".001"
prg_bar 30 1
Update
prg_bar 30 5

# Counter=10
# while [ $Counter -lt 100 ];
# do 
# for a in "${Array[@]}" 
# sleep ".001"
# echo "$a" >>/dev/null 2>&1
# sleep ".001"
#
# let Counter=Counter+1
# done
# done

COUNTER=5
for a in "${Array[@]}";
do
apt -yq $a >/dev/null 2>&1
wait
let COUNTER=COUNTER+1
prg_bar 30 $COUNTER
done


prg_bar 30 95
Update
prg_bar 30 97
Upgrade
prg_bar 30 100
sleep "2"
echo "[*] Running  uicache"
echo "[*] Running  Respring"
sleep "2"
killall -9 SpringBoard

EOF