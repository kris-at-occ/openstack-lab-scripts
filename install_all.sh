#! /bin/bash

SCRIPT_NAME="install_all.sh"
# This is a Global Installation Script
# It is sourcing all Global Variables scripts from var/ and all Global Libraries from lib/
# Then it runs installation script for each Node defined in nodes/

for script in $(find vars/*.sh -maxdepth 0 -type f 2>/dev/null); do
  source $script
done

for script in $(find lib/*.sh -maxdepth 0 -type f 2>/dev/null); do
  source $script
done

check_variable KEYSTONE_DB_PASS
check_variable GET_LOST
