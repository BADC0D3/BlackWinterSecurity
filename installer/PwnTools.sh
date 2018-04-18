apt-get update -y &> /dev/null

echo -e "${GC}[+] PwnTools${NC}"
if [ ! -d "$RootDir/PwnTools/" ]; then
  apt-get install python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential -y &> /dev/null
fi

#gitProcess "PwnTools" "$RootDir/PwnTools/" "https://github.com/Gallopsled/pwntools.git"

if [ ! -d "$RootDir/PwnTools/" ]; then
  yes | pip install pwntools &> /dev/null
else
  yes | pip install --upgrade pwntools &> /dev/null
fi
