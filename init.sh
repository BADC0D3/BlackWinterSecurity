if [ ! -d $RootDir ]; then
  echo -e "${GC}[+] Creating the following dir $RootDir${NC}"
  mkdir $RootDir
else
  echo -e "${GC}[+] Root Directory $RootDir${NC}"
fi

if [ ! -d "$RootDir/Setup" ]; then
  mkdir "$RootDir/Setup"
fi

