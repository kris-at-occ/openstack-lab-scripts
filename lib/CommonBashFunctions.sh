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

# simple_template_with_vars (arg1) - substitue variable names in template file, which name is in arg1

function simple_template_with_vars () {
  eval "echo \"$(cat $1)\""
}

