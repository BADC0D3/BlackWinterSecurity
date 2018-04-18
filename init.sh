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

if [ ! -d $RootDir ]; then
  echo -e "${GC}[+] Creating the following dir $RootDir${NC}"
  mkdir $RootDir
else
  echo -e "${GC}[+] Root Directory $RootDir${NC}"
fi

if [ ! -d "$RootDir/Setup" ]; then
  mkdir "$RootDir/Setup"
fi

