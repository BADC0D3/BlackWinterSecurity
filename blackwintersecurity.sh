#!/bin/bash

RootDir="/blackwintersecurity"
source ./banner.sh
source ./init.sh
source ./git_process.sh

#-----Install SecList------------------
source ./installer/SecList.sh

#-----Install Steghide/StegCracker-----
source ./installer/StegCracker.sh

#-----Install RsaCtfTool---------------
source ./installer/RsaCtfTool.sh

#-----Install VeilEvasion--------------
source ./installer/VeilEvasion.sh

