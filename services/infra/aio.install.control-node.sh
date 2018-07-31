#! /bin/bash

# This file contains script to Install OpenStack Infrastructure on Control Node

# Source Variables Definition for Infra Service
source vars.sh 2>/dev/null

# Check required Parameter Variables

check_variable AIO_SUBSERVICES

# Source All Control Node Installation Scripts for Subservices of Infra Service

for subservice in $AIO_SUBSERVICES; do
  source services/infra/$subservice.d/install.control-node.sh
done

# Execute final commands
