echo -e "${GC}[+] Veil-Evasion${NC}"
gitProcess "Veil-Evasion" "$RootDir/Veil-Evasion/" "https://github.com/Veil-Framework/Veil-Evasion.git"

if [ -d "/root/.config/wine/veil" ]; then
  echo -e "${YC}[-] Remove old config${NC}"
  rm -rf /root/.config/wine/veil
else
  echo -e "${YC}[-] Install Veil-Evasion${NC}"
fi

xterm -e "$RootDir/Veil-Evasion/setup/setup.sh -c"

