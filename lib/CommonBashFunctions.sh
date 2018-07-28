#! /bin/bash

# This file defines common BASH functions used in other scripts

# check_variable (arg1) - checks if Variable referenced by arg string is empty, then prints error message and exits,
#                         otherwise simply returns

function check_variable () {
  if [ -z "${!1}" ]
  then
    echo "$SCRIPT_NAME: Environment Variable $1 cannot be empty! Exiting..."
    exit 1
  fi
}
