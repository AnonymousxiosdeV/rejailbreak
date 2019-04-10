function delay()
{
    sleep 0.2;
}

#
# Description : print out executing progress
# 
CURRENT_PROGRESS=0
function progress()
{
    PARAM_PROGRESS=$1;
    PARAM_PHASE=$2;

    if [ $CURRENT_PROGRESS -le 0 -a $PARAM_PROGRESS -ge 0 ]  ; then echo -ne "[..........................] (0%)  $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 1 -a $PARAM_PROGRESS -ge 0 ]  ; then echo -ne "[..........................] (0%)  $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 2 -a $PARAM_PROGRESS -ge 0 ]  ; then echo -ne "[..........................] (0%)  $PARAM_PHASE \r"  ; delay; fi;    
    if [ $CURRENT_PROGRESS -le 5 -a $PARAM_PROGRESS -ge 5 ]  ; then echo -ne "[#.........................] (5%)  $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 10 -a $PARAM_PROGRESS -ge 10 ]; then echo -ne "[##........................] (10%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 15 -a $PARAM_PROGRESS -ge 15 ]; then echo -ne "[###.......................] (15%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 20 -a $PARAM_PROGRESS -ge 20 ]; then echo -ne "[####......................] (20%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 25 -a $PARAM_PROGRESS -ge 25 ]; then echo -ne "[#####.....................] (25%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 30 -a $PARAM_PROGRESS -ge 30 ]; then echo -ne "[######....................] (30%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 35 -a $PARAM_PROGRESS -ge 35 ]; then echo -ne "[#######...................] (35%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 40 -a $PARAM_PROGRESS -ge 40 ]; then echo -ne "[########..................] (40%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 45 -a $PARAM_PROGRESS -ge 45 ]; then echo -ne "[#########.................] (45%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 50 -a $PARAM_PROGRESS -ge 50 ]; then echo -ne "[##########................] (50%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 55 -a $PARAM_PROGRESS -ge 55 ]; then echo -ne "[###########...............] (55%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 60 -a $PARAM_PROGRESS -ge 60 ]; then echo -ne "[############..............] (60%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 65 -a $PARAM_PROGRESS -ge 65 ]; then echo -ne "[#############.............] (65%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 70 -a $PARAM_PROGRESS -ge 70 ]; then echo -ne "[###############...........] (70%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 75 -a $PARAM_PROGRESS -ge 75 ]; then echo -ne "[#################.........] (75%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 80 -a $PARAM_PROGRESS -ge 80 ]; then echo -ne "[####################......] (80%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 85 -a $PARAM_PROGRESS -ge 85 ]; then echo -ne "[#######################...] (85%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 90 -a $PARAM_PROGRESS -ge 90 ]; then echo -ne "[##########################] (100%) $PARAM_PHASE \r" ; delay; fi;
    if [ $CURRENT_PROGRESS -le 100 -a $PARAM_PROGRESS -ge 100 ];then echo -ne 'Done!                                            \n' ; delay; fi;

    CURRENT_PROGRESS=$PARAM_PROGRESS;

}

Array=(com.mpg13.FlashBack com.a3tweaks.flipswitch com.chpwn.iconsupport com.cokepokes.inutt com.creaturecoding.cru com.cydiageek.skinnysettings com.exile90.icleanerpro com.ichitaso.powerselector11 com.iwazowski.iweppro5 com.jailbreak365.safeccmodules com.jakeashacks.jtool com.julioverne.cachewipe com.julioverne.flipconvert com.midnightchips.localhostssh com.opa334.ccsupport com.opa334.safariplus com.repo.xarold.com.betterccxi com.repo.xarold.com.cocoatop64 com.repo.xarold.com.cydown com.repo.xarold.com.lashack com.rpetrich.rocketbootstrap com.ruler225.videohud com.tigisoftware.appdatamanager cydia.com.iphonecake.appcake6 cydia.kiiimo.org.filzafilemanager cydia.kiiimo.org.icone cydia.net.angelxwind.appsyncunified idv.aqua.igameguardian.ios12 jp.ashikase.libpackageinfo jp.ashikase.techsupport net.limneos.oslog basic-cmds curl git grep htop ld64 ldid less libssh2 libssl1.0 libxml2 llvm-clang lzma make nano odcctools openssh perl preferenceloader readline rsync sed uuid adv-cmds)

main() {

    
    draw_progress_bar 1
    sleep "1"
    block_progress_bar 2
    apt-get -y update >/dev/null 2>&1
    wait
    draw_progress_bar 5
    sleep "1"
    block_progress_bar 6
    apt-get -y upgrade >/dev/null 2>&1
    wait
    draw_progress_bar 10
    sleep "1"
   
 COUNTER=10
    for a in "${Array[@]}";
    do
    block_progress_bar $COUNTER
    apt-get -y --allow-unauthenticated install $a >/dev/null 2>&1
    wait
    let COUNTER=COUNTER+1
    draw_progress_bar $COUNTER
    sleep "1"
done
    block_progress_bar 66
    apt-get -y update >/dev/null 2>&1
    wait
    draw_progress_bar 79
    sleep "1"
    block_progress_bar 80
    apt-get -y --fix-missing upgrade >/dev/null 2>&1
    wait
    draw_progress_bar 89
    sleep "1"
    block_progress_bar 90
    apt-get -y dist-upgrade >/dev/null 2>&1
    wait
    draw_progress_bar 94
    sleep "1"
    block_progress_bar 95
    uicache
    draw_progress_bar 96
    sleep "1"
    draw_progress_bar 97
    sleep "1"
    draw_progress_bar 98
    sleep "1"
    draw_progress_bar 99
    sleep "1"
    draw_progress_bar 100
sleep "2"
destroy_scroll_area
echo "[*] Running  Respring"
sleep "5"
killall -9 SpringBoard
exit 0   
}

main
