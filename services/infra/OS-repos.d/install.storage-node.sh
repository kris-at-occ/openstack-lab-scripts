#! /bin/bash

SCRIPT_NAME="services/infra/OS-repos.d/install.storage-node.sh"

# This file contains script to Install OpenStack Infrastructure OpenStack Repository files on Storage Node
# This script is expected to run as root

if (whoami != root)
then 
  echo "$SCRIPT_NAME: This script must be run as root"
  exit 1
fi

# Source Variables Definition for OpenStack Repository

source services/infra/OS-repos.d/vars.sh 2>/dev/null

# Check if mangdatory Parameter Variables are set

check_variable OPENSTACK_RELEASE

# Install OpenStack Basic Packages and OpenStack Release Repositories Package for Ubuntu - chrony
DEBIAN_FRONTEND=noninteractive apt-get -y update
DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common
DEBIAN_FRONTEND=noninteractive add-apt-repository cloud-archive:$OPENSTACK_RELEASE
DEBIAN_FRONTEND=noninteractive apt-get -y update
DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
