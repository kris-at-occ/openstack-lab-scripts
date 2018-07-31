#! /bin/bash

# This file contains script to Install OpenStack Infrastructure on Control Node

# Source Variables Definition for Infra Service
source vars.sh 2>/dev/null

# Source All Control Node Installation Scripts for Subservices of Infra Service

for script in $(find services/infra/*.d/install.control-node.sh -maxdepth 0 -type f 2>/dev/null); do
  source $script
done

# Execute final commands
