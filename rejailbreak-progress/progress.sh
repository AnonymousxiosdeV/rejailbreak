#!/bin/bash

function delay()
{
    sleep 0.2;
}

CURRENT_PROGRESS=0
function progress()
{
    PARAM_PROGRESS=$1;
    PARAM_PHASE=$2;

    if [ $CURRENT_PROGRESS -le 0 -a $PARAM_PROGRESS -ge 0 ]  ; then echo -ne "[*] Rejailbreak Progress[.............................] (0%)  $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 1 -a $PARAM_PROGRESS -ge 1 ]  ; then echo -ne "[*] Rejailbreak Progress[.............................] (1%)  $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 2 -a $PARAM_PROGRESS -ge 2 ]  ; then echo -ne "[*] Rejailbreak Progress[.............................] (2%)  $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 3 -a $PARAM_PROGRESS -ge 3 ]  ; then echo -ne "[*] Rejailbreak Progress[.............................] (3%)  $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 4 -a $PARAM_PROGRESS -ge 4 ]  ; then echo -ne "[*] Rejailbreak Progress[.............................] (4%)  $PARAM_PHASE \r"  ; delay; fi;    
    if [ $CURRENT_PROGRESS -le 5 -a $PARAM_PROGRESS -ge 5 ]  ; then echo -ne "[*] Rejailbreak Progress[#............................] (5%)  $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 6 -a $PARAM_PROGRESS -ge 6 ]  ; then echo -ne "[*] Rejailbreak Progress[#............................] (6%)  $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 7 -a $PARAM_PROGRESS -ge 7 ]  ; then echo -ne "[*] Rejailbreak Progress[##...........................] (7%)  $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 8 -a $PARAM_PROGRESS -ge 8 ]  ; then echo -ne "[*] Rejailbreak Progress[##...........................] (8%)  $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 9 -a $PARAM_PROGRESS -ge 9 ]  ; then echo -ne "[*] Rejailbreak Progress[##...........................] (9%)  $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 10 -a $PARAM_PROGRESS -ge 10 ]; then echo -ne "[*] Rejailbreak Progress[###..........................] (10%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 11 -a $PARAM_PROGRESS -ge 11 ]; then echo -ne "[*] Rejailbreak Progress[###..........................] (11%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 12 -a $PARAM_PROGRESS -ge 12 ]; then echo -ne "[*] Rejailbreak Progress[###..........................] (12%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 13 -a $PARAM_PROGRESS -ge 13 ]; then echo -ne "[*] Rejailbreak Progress[###..........................] (13%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 14 -a $PARAM_PROGRESS -ge 14 ]; then echo -ne "[*] Rejailbreak Progress[###..........................] (14%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 15 -a $PARAM_PROGRESS -ge 15 ]; then echo -ne "[*] Rejailbreak Progress[####.........................] (15%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 16 -a $PARAM_PROGRESS -ge 16 ]; then echo -ne "[*] Rejailbreak Progress[####.........................] (16%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 17 -a $PARAM_PROGRESS -ge 17 ]; then echo -ne "[*] Rejailbreak Progress[####.........................] (17%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 18 -a $PARAM_PROGRESS -ge 18 ]; then echo -ne "[*] Rejailbreak Progress[####.........................] (18%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 19 -a $PARAM_PROGRESS -ge 19 ]; then echo -ne "[*] Rejailbreak Progress[####.........................] (19%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 20 -a $PARAM_PROGRESS -ge 20 ]; then echo -ne "[*] Rejailbreak Progress[#####........................] (20%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 21 -a $PARAM_PROGRESS -ge 21 ]; then echo -ne "[*] Rejailbreak Progress[#####........................] (21%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 22 -a $PARAM_PROGRESS -ge 22 ]; then echo -ne "[*] Rejailbreak Progress[#####........................] (22%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 23 -a $PARAM_PROGRESS -ge 23 ]; then echo -ne "[*] Rejailbreak Progress[#####........................] (23%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 24 -a $PARAM_PROGRESS -ge 24 ]; then echo -ne "[*] Rejailbreak Progress[#####........................] (24%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 25 -a $PARAM_PROGRESS -ge 25 ]; then echo -ne "[*] Rejailbreak Progress[######.......................] (25%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 26 -a $PARAM_PROGRESS -ge 26 ]; then echo -ne "[*] Rejailbreak Progress[######.......................] (26%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 27 -a $PARAM_PROGRESS -ge 27 ]; then echo -ne "[*] Rejailbreak Progress[######.......................] (27%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 28 -a $PARAM_PROGRESS -ge 28 ]; then echo -ne "[*] Rejailbreak Progress[######.......................] (28%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 29 -a $PARAM_PROGRESS -ge 29 ]; then echo -ne "[*] Rejailbreak Progress[######.......................] (29%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 30 -a $PARAM_PROGRESS -ge 30 ]; then echo -ne "[*] Rejailbreak Progress[#######......................] (30%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 31 -a $PARAM_PROGRESS -ge 31 ]; then echo -ne "[*] Rejailbreak Progress[#######......................] (31%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 32 -a $PARAM_PROGRESS -ge 32 ]; then echo -ne "[*] Rejailbreak Progress[#######......................] (32%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 33 -a $PARAM_PROGRESS -ge 33 ]; then echo -ne "[*] Rejailbreak Progress[#######......................] (33%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 34 -a $PARAM_PROGRESS -ge 34 ]; then echo -ne "[*] Rejailbreak Progress[#######......................] (34%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 35 -a $PARAM_PROGRESS -ge 35 ]; then echo -ne "[*] Rejailbreak Progress[########.....................] (35%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 36 -a $PARAM_PROGRESS -ge 36 ]; then echo -ne "[*] Rejailbreak Progress[########.....................] (36%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 37 -a $PARAM_PROGRESS -ge 37 ]; then echo -ne "[*] Rejailbreak Progress[########.....................] (37%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 38 -a $PARAM_PROGRESS -ge 38 ]; then echo -ne "[*] Rejailbreak Progress[########.....................] (38%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 39 -a $PARAM_PROGRESS -ge 39 ]; then echo -ne "[*] Rejailbreak Progress[########.....................] (39%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 40 -a $PARAM_PROGRESS -ge 40 ]; then echo -ne "[*] Rejailbreak Progress[#########....................] (40%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 41 -a $PARAM_PROGRESS -ge 41 ]; then echo -ne "[*] Rejailbreak Progress[#########....................] (41%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 42 -a $PARAM_PROGRESS -ge 42 ]; then echo -ne "[*] Rejailbreak Progress[#########....................] (42%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 43 -a $PARAM_PROGRESS -ge 43 ]; then echo -ne "[*] Rejailbreak Progress[#########....................] (43%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 44 -a $PARAM_PROGRESS -ge 44 ]; then echo -ne "[*] Rejailbreak Progress[#########....................] (44%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 45 -a $PARAM_PROGRESS -ge 45 ]; then echo -ne "[*] Rejailbreak Progress[##########...................] (45%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 46 -a $PARAM_PROGRESS -ge 46 ]; then echo -ne "[*] Rejailbreak Progress[##########...................] (46%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 47 -a $PARAM_PROGRESS -ge 47 ]; then echo -ne "[*] Rejailbreak Progress[##########...................] (47%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 48 -a $PARAM_PROGRESS -ge 48 ]; then echo -ne "[*] Rejailbreak Progress[##########...................] (48%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 49 -a $PARAM_PROGRESS -ge 49 ]; then echo -ne "[*] Rejailbreak Progress[##########...................] (49%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 50 -a $PARAM_PROGRESS -ge 50 ]; then echo -ne "[*] Rejailbreak Progress[###########..................] (50%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 51 -a $PARAM_PROGRESS -ge 51 ]; then echo -ne "[*] Rejailbreak Progress[###########..................] (51%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 52 -a $PARAM_PROGRESS -ge 52 ]; then echo -ne "[*] Rejailbreak Progress[###########..................] (52%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 53 -a $PARAM_PROGRESS -ge 53 ]; then echo -ne "[*] Rejailbreak Progress[###########..................] (53%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 54 -a $PARAM_PROGRESS -ge 54 ]; then echo -ne "[*] Rejailbreak Progress[###########..................] (54%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 55 -a $PARAM_PROGRESS -ge 55 ]; then echo -ne "[*] Rejailbreak Progress[############.................] (55%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 56 -a $PARAM_PROGRESS -ge 56 ]; then echo -ne "[*] Rejailbreak Progress[############.................] (56%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 57 -a $PARAM_PROGRESS -ge 57 ]; then echo -ne "[*] Rejailbreak Progress[############.................] (57%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 58 -a $PARAM_PROGRESS -ge 58 ]; then echo -ne "[*] Rejailbreak Progress[############.................] (58%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 59 -a $PARAM_PROGRESS -ge 59 ]; then echo -ne "[*] Rejailbreak Progress[############.................] (59%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 60 -a $PARAM_PROGRESS -ge 60 ]; then echo -ne "[*] Rejailbreak Progress[#############................] (60%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 61 -a $PARAM_PROGRESS -ge 61 ]; then echo -ne "[*] Rejailbreak Progress[#############................] (61%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 62 -a $PARAM_PROGRESS -ge 62 ]; then echo -ne "[*] Rejailbreak Progress[#############................] (62%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 63 -a $PARAM_PROGRESS -ge 63 ]; then echo -ne "[*] Rejailbreak Progress[#############................] (63%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 64 -a $PARAM_PROGRESS -ge 64 ]; then echo -ne "[*] Rejailbreak Progress[#############................] (64%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 65 -a $PARAM_PROGRESS -ge 65 ]; then echo -ne "[*] Rejailbreak Progress[###############..............] (65%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 66 -a $PARAM_PROGRESS -ge 66 ]; then echo -ne "[*] Rejailbreak Progress[###############..............] (66%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 70 -a $PARAM_PROGRESS -ge 70 ]; then echo -ne "[*] Rejailbreak Progress[#################............] (70%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 75 -a $PARAM_PROGRESS -ge 75 ]; then echo -ne "[*] Rejailbreak Progress[###################..........] (75%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 79 -a $PARAM_PROGRESS -ge 79 ]; then echo -ne "[*] Rejailbreak Progress[###################..........] (79%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 80 -a $PARAM_PROGRESS -ge 80 ]; then echo -ne "[*] Rejailbreak Progress[######################.......] (80%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 85 -a $PARAM_PROGRESS -ge 85 ]; then echo -ne "[*] Rejailbreak Progress[#########################....] (85%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 90 -a $PARAM_PROGRESS -ge 90 ]; then echo -ne "[*] Rejailbreak Progress[#############################] (100%) $PARAM_PHASE \r" ; delay; fi;
    if [ $CURRENT_PROGRESS -le 100 -a $PARAM_PROGRESS -ge 100 ];then echo -ne 'Done!                                            \n' ; delay; fi;

    CURRENT_PROGRESS=$PARAM_PROGRESS;

}

Array=(com.mpg13.FlashBack com.a3tweaks.flipswitch com.chpwn.iconsupport com.cokepokes.inutt com.creaturecoding.crux com.cydiageek.skinnysettings com.exile90.icleanerpro com.ichitaso.powerselector11 com.iwazowski.iweppro5 com.jailbreak365.safeccmodules com.jakeashacks.jtool com.julioverne.cachewipe com.julioverne.flipconvert com.midnightchips.localhostssh com.opa334.ccsupport com.opa334.safariplus com.repo.xarold.com.betterccxi com.repo.xarold.com.cocoatop64 com.repo.xarold.com.cydown com.repo.xarold.com.lashack com.rpetrich.rocketbootstrap com.ruler225.videohud com.tigisoftware.appdatamanager cydia.com.iphonecake.appcake6 cydia.kiiimo.org.filzafilemanager cydia.kiiimo.org.icone cydia.net.angelxwind.appsyncunified idv.aqua.igameguardian.ios12 jp.ashikase.libpackageinfo jp.ashikase.techsupport net.limneos.oslog basic-cmds curl git grep htop ld64 ldid less libssh2 libssl1.0 libxml2 llvm-clang lzma make nano odcctools openssh perl preferenceloader readline rsync sed uuid adv-cmds)

main() {

    clear;
    echo ""
    echo ""
    echo "" 
    progress 1 " [*] Starting Up                  "
    sleep "1"
    progress 2 " [*] Updating APT                  "
    apt-get -y update >/dev/null 2>&1
    wait
    progress 5 " [*] Upgrading APT                  "
    apt-get -y upgrade >/dev/null 2>&1
    wait
    progress 10 ""
    
   
 COUNTER=10
    for a in "${Array[@]}"
    do
    let COUNTER=COUNTER+1
    progress $COUNTER " [*] Downloading $a                  "
    apt-get -y --allow-unauthenticated install $a >/dev/null 2>&1
    wait
    progress $COUNTER " [*] Installing $a                  "
done
    progress 66 " [*] Updating APT                  "
    apt-get -y update >/dev/null 2>&1
    wait
    progress 79 " [*] Done Updating                  "
    sleep "1"
    progress 80 " [*] Fixing & Upgrading Tweaks                  "
    apt-get -y --fix-missing upgrade >/dev/null 2>&1
    wait
    progress 89 "[*] Done Fixing                  "
    sleep "1"
    progress 90 "[*] Updating & Upgrading Deps                  "
    apt-get -y dist-upgrade >/dev/null 2>&1
    wait
    progress 100 " [*]Finished                  "
sleep "2"
echo " [*] Running UICahe & Respring                  "
uicache
killall -9 SpringBoard
}

main_temp() {

    clear
    echo ""
    echo ""
    echo ""
    progress 1 " [*] Starting Up                  "
    sleep "1"
    progress 2 " [*] Updating APT                  "
    apt-get -y update >/tmp/rejailbreak.txt
    wait
    progress 5 " [*] Upgrading APT                  "
    apt-get -y upgrade >>/tmp/rejailbreak.txt
    wait
    progress 10 ""
    sleep "1"
    
   
 COUNTER=10
    for a in "${Array[@]}"
    do
    let COUNTER=COUNTER+1
    progress $COUNTER " [*] Downloading $a                  "
    apt-get -y --allow-unauthenticated install $a >>/tmp/rejailbreak.txt
    wait
    progress $COUNTER " [*] Installing $a                  "
    sleep "1"
done
    progress 66 " [*] Updating APT                  "
    apt-get -y update >>/tmp/rejailbreak.txt
    wait
    progress 79 " [*] Done Updating                  "
    sleep "1"
    progress 80 " [*] Fixing & Upgrading Tweaks                  "
    apt-get -y --fix-missing upgrade >>/tmp/rejailbreak.txt
    wait
    progress 89 "[*] Done Fixing                  "
    sleep "1"
    progress 90 "[*] Updating & Upgrading Deps                  "
    apt-get -y dist-upgrade >>/tmp/rejailbreak.txt
    wait
    progress 100 " [*]Finished                  "
sleep "2"
cat /tmp/rejailbreak.txt
}

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root"
    exit 1
elif ["$1" = "-temp"]
then
    main_temp
else
    main
fi
