function gitProcess {
  gitName=$1
  gitDir=$2
  gitURL=$3
  BaseDir="$( cd "$(dirname "$0")" ; pwd -P )"

  if [ ! -d "$gitDir" ]; then
    echo -e "${GC}[-] Get $gitName${NC}"
    git clone $gitURL "$gitDir" --quiet &> /dev/null
  else
    echo -e "${YC}[-] Update $gitName${NC}"
    cd "$gitDir"
    git reset --hard origin/master --quiet &> /dev/null
    cd "$BaseDir"
  fi
}
