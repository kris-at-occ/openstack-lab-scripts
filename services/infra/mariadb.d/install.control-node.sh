#! /bin/sh

SCRIPT_NAME="services/infra/mariadb.d/install.control-node.sh"

# This file contains script to Install OpenStack Infrastructure Single-node Mariadb Subservice on Control Node
# This script is expected to run as root

if (whoami != root)
then 
  echo "$SCRIPT_NAME: This script must be run as root"
  exit 1
fi

# Source Variables Definition for Mariadb Subservice

source services/infra/mariadb.d/vars.sh 2>/dev/null

# Install Mariadb Packages for Ubuntu
DEBIAN_FRONTEND=noninteractive apt-get -y update
DEBIAN_FRONTEND=noninteractive apt-get install -y mariadb python-pymysql

# Check if mangdatory Parameter Variables are set

check_variable CONTROLLER1_HOSTNAME
check_variable MARIADB_CONF_FILE

MARIADB_SERVER=$CONTROLLER_HOSTNAME; simple_template_with_vars templates/mariadb.aio.conf >> $MARIADB_CONF_FILE

# Restart MariaDB Service

service mysql restart

# Secure MariaDB
# mysql_secure_installation !!! Complete this step
