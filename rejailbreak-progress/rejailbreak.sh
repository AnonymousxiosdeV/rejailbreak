#!/bin/bash

if [[ $EUID -ne 0 ]]; then
echo "This script must be run as root"
exit 1
fi

CODE_SAVE_CURSOR="\033[s"
CODE_RESTORE_CURSOR="\033[u"
CODE_CURSOR_IN_SCROLL_AREA="\033[1A"
COLOR_FG="\e[30m"
COLOR_BG="\e[42m"
COLOR_BG_BLOCKED="\e[43m"
RESTORE_FG="\e[39m"
RESTORE_BG="\e[49m"

PROGRESS_BLOCKED="false"
TRAPPING_ENABLED="false"
TRAP_SET="false"

setup_scroll_area() {
    if [ "$TRAPPING_ENABLED" = "true" ]; then
        trap_on_interrupt
    fi

    lines=$(tput lines)
    let lines=$lines-1
    echo -en "\n"

    echo -en "$CODE_SAVE_CURSOR"
    echo -en "\033[0;${lines}r"

    echo -en "$CODE_RESTORE_CURSOR"
    echo -en "$CODE_CURSOR_IN_SCROLL_AREA"

    draw_progress_bar 0
}

destroy_scroll_area() {
    lines=$(tput lines)
    echo -en "$CODE_SAVE_CURSOR"
    echo -en "\033[0;${lines}r"
    echo -en "$CODE_RESTORE_CURSOR"
    echo -en "$CODE_CURSOR_IN_SCROLL_AREA"
    clear_progress_bar
    echo -en "\n\n"
    if [ "$TRAP_SET" = "true" ]; then
        trap - INT
    fi
}

draw_progress_bar() {
    percentage=$1
    lines=$(tput lines)
    let lines=$lines
    echo -en "$CODE_SAVE_CURSOR"
    echo -en "\033[${lines};0f"
    tput el
    PROGRESS_BLOCKED="false"
    print_bar_text $percentage
    echo -en "$CODE_RESTORE_CURSOR"
}

block_progress_bar() {
    percentage=$1
    lines=$(tput lines)
    let lines=$lines
    echo -en "$CODE_SAVE_CURSOR"
    echo -en "\033[${lines};0f"
    tput el
    PROGRESS_BLOCKED="true"
    print_bar_text $percentage
    echo -en "$CODE_RESTORE_CURSOR"
}

clear_progress_bar() {
    lines=$(tput lines)
    let lines=$lines
    echo -en "$CODE_SAVE_CURSOR"
    echo -en "\033[${lines};0f"
    tput el
    echo -en "$CODE_RESTORE_CURSOR"
}

print_bar_text() {
    local percentage=$1
    local cols=$(tput cols)
    let bar_size=$cols-17

    local color="${COLOR_FG}${COLOR_BG}"
    if [ "$PROGRESS_BLOCKED" = "true" ]; then
        color="${COLOR_FG}${COLOR_BG_BLOCKED}"
    fi

    let complete_size=($bar_size*$percentage)/100
    let remainder_size=$bar_size-$complete_size
    progress_bar=$(echo -ne "["; echo -en "${color}"; printf_new "#" $complete_size; echo -en "${RESTORE_FG}${RESTORE_BG}"; printf_new "." $remainder_size; echo -ne "]");

    echo -ne " Progress ${percentage}% ${progress_bar}"
}

enable_trapping() {
    TRAPPING_ENABLED="true"
}

trap_on_interrupt() {
    TRAP_SET="true"
    trap cleanup_on_interrupt INT
}

cleanup_on_interrupt() {
    destroy_scroll_area
    exit
}

printf_new() {
    str=$1
    num=$2
    v=$(printf "%-${num}s" "$str")
    echo -ne "${v// /$str}"
}

Array=(com.mpg13.FlashBack com.a3tweaks.flipswitch com.chpwn.iconsupport com.cokepokes.inutt com.creaturecoding.cru com.cydiageek.skinnysettings com.exile90.icleanerpro com.ichitaso.powerselector11 com.iwazowski.iweppro5 com.jailbreak365.safeccmodules com.jakeashacks.jtool com.julioverne.cachewipe com.julioverne.flipconvert com.midnightchips.localhostssh com.opa334.ccsupport com.opa334.safariplus com.repo.xarold.com.betterccxi com.repo.xarold.com.cocoatop64 com.repo.xarold.com.cydown com.repo.xarold.com.lashack com.rpetrich.rocketbootstrap com.ruler225.videohud com.tigisoftware.appdatamanager cydia.com.iphonecake.appcake6 cydia.kiiimo.org.filzafilemanager cydia.kiiimo.org.icone cydia.net.angelxwind.appsyncunified idv.aqua.igameguardian.ios12 jp.ashikase.libpackageinfo jp.ashikase.techsupport net.limneos.oslog basic-cmds curl git grep htop ld64 ldid less libssh2 libssl1.0 libxml2 llvm-clang lzma make nano odcctools openssh perl preferenceloader readline rsync sed uuid adv-cmds)

main() {
    enable_trapping
    setup_scroll_area
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
