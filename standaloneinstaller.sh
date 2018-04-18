#!/bin/bash

RootDir="/blackwintersecurity"
source ./banner.sh

if [ -e installer/$1.sh ]; then
  source ./init.sh
  source ./git_process.sh
  source ./installer/$1.sh
else
  echo "Usage: $0 [Installer]"
  echo "Installers:"
  find installer -type f -printf "  %f\n" | cut -f 1 -d '.'
  echo "Examples:"
  echo " $0 SecList"
  echo " $0 VeilEvasion"
fi
