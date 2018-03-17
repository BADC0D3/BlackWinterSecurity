#!/bin/bash

RootDir="/blackwintersecurity"
GC='\033[0;32m'
RC='\033[0;31m'
YC='\033[1;33m'
NC='\033[0m' # No Color

echo -e "                 --==Welcome to BlackWinter Security==--                            "
echo -e "${RC}==========================================================================${NC}"
echo -e "               BlackWinterSecurity | [Updated]: 03-13-2018                          "
echo -e "${RC}==========================================================================${NC}"
echo -e "  [Web]: https://www.blackwintersecurity.com/  |  [Creator]: bad${RC}c0d3${NC}      "
echo -e "${RC}==========================================================================${NC}"

gitProcess(){
  gitName=$1
  gitDir=$2
  gitURL=$3
  if [ ! -d "$gitDir" ]; then
    echo -e "${GC}[-] Get $gitName${NC}"
    git clone $gitURL "$gitDir" --quiet &> /dev/null
  else
    echo -e "${YC}[-] Update $gitName${NC}"
    cd "$gitDir"
    git reset --hard origin/master --quiet &> /dev/null
    cd "$RootDir"
  fi
}

if [ ! -d $RootDir ]; then
  echo -e "${GC}[+] Creating the following dir $RootDir${NC}"
  mkdir $RootDir
else
  echo -e "${GC}[+] Root Directory $RootDir${NC}"
fi

if [ ! -d "$RootDir/Setup" ]; then
  mkdir "$RootDir/Setup"
fi

echo -e "${GC}[+] SecList${NC}"
gitProcess "SecList" "$RootDir/SecList/" "https://github.com/danielmiessler/SecLists.git"

echo -e "${GC}[+] StegCracker${NC}"
apt-get install steghide -y &> /dev/null
wget https://raw.githubusercontent.com/Paradoxis/StegCracker/master/stegcracker -O /bin/stegcracker &> /dev/null
chmod +x /bin/stegcracker

echo -e "${GC}[+] Veil-Evasion${NC}"
gitProcess "Veil-Evasion" "$RootDir/Veil-Evasion/" "https://github.com/Veil-Framework/Veil-Evasion.git"

if [ -d "/root/.config/wine/veil" ]; then
  echo -e "${YC}[-] Remove old config${NC}"
  rm -rf /root/.config/wine/veil
else
  echo -e "${YC}[-] Install Veil-Evasion${NC}"
fi

xterm -e "$RootDir/Veil-Evasion/setup/setup.sh -c"


