# Directory Structure of COA-Lab Installation Script

This file describes the Directory Structure used in the COA-Lab Installation Script.
It heps you find the files you need to edit, in case you want to override defaults.

* vars/       # Here you find all files with Global Variables, like Passwords, Hostnames, IP Addresses
  * GlobalPasswords.sh
  * GlobalParameters.sh
* templates/  # All Global file Templates
  * etc.hosts
* lib/        # Global Script Libraries
  * CommonBashFunctions.sh
* services/   # Generic Scripts, Variables & Templates used to install OpenStack Services
  * keystone/ # Scripts, Variables & Templates for **Keystone** Identity Service Installation
    * Keystone.Vars.sh
    * Keystone.install.control-node.sh
  * neutron/  # Generic Scripts, Variables & Templates for **Neutron* Network Service Installation  
    * Neutron.Vars.sh
    * Neutron.install.control-node.sh
    * Neutron.install.network-node.sh
    * Neutron.install.compute-node.sh
    * linuxbridge/
      * Neutron.configure.control-node.sh
      * Neutron.configure.network-node.sh
      * Neutron.configure.compute-node.sh
    * openvswitch/
      * Neutron.configure.control-node.sh
      * Neutron.configure.network-node.sh
      * Neutron.configure.compute-node.sh
* nodes/      # Configuration files, Variables, Scripts & Templates to Install & Configure specific Nodes
  * control1
    * NodeVariables.sh
    * NodeInstall.sh
    * Control1.post-install.sh
  * compute1
    * NodeVariables.sh
    * NodeInstall.sh
