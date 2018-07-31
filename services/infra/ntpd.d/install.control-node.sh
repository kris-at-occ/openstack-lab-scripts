#! /bin/bash

SCRIPT_NAME="services/infra/ntpd.d/install.control-node.sh"

# This file contains script to Install OpenStack Infrastructure NTP Subservice on Control Node
# This script is expected to run as root

if (whoami != root)
then 
  echo "$SCRIPT_NAME: This script must be run as root"
  exit 1
fi

# Source Variables Definition for NTP Subservice Service

source services/infra/ntpd.d/vars.sh 2>/dev/null

# Install NTP Package for Ubuntu - chrony
DEBIAN_FRONTEND=noninteractive apt-get -y update
DEBIAN_FRONTEND=noninteractive apt-get install -y chrony

# Check if mangdatory Parameter Variables are set

check_variable NTP_SERVER
check variable MANAGEMENT_NET_CIDR

# Set Parameters in /etc/chrony/chrony.conf
# server $NTP_SERVER iburst
# allow $MANAGEMENT_NET_CIDR (10.0.0.0/24)

# Restart Chrony Service

service chrony restart
