apt-get update -y &> /dev/null

echo -e "${GC}[+] RsaCtfTool${NC}"
if [ ! -d "$RootDir/RsaCtfTool/" ]; then
  apt-get install libgmp-dev -y &> /dev/null
  apt-get install libmpfr-dev -y &> /dev/null
  apt-get install libmpc-dev -y &> /dev/null
fi

gitProcess "RsaCtfTool" "$RootDir/RsaCtfTool/" "https://github.com/Ganapati/RsaCtfTool.git"

yes | pip install -r "$RootDir/RsaCtfTool/requirements.txt" &> /dev/null

