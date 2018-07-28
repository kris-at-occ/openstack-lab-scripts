# Directory Structure of COA-Lab Installation Script

This file describes the Directory Structure used in the COA-Lab Installation Script.
It heps you find the files you need to edit, in case you want to override defaults.

* _**install_all.sh**_ # Global Installation Script to run the Deployment, must be run from the root directory of cloned repo
* _**vars/**_       # Here you find all files with Global Variables, like Passwords, Hostnames, IP Addresses
  * _GlobalPasswords.sh_
  * _GlobalParameters.sh_
* _**templates/**_  # All Global file Templates
  * etc.hosts
* _**lib/**_        # Global Script Libraries
  * _CommonBashFunctions.sh_
* _**services/**_   # Generic Scripts, Variables & Templates used to install OpenStack Services
  * _**keystone/**_ # Scripts, Variables and Templates for **Keystone** Identity Service Installation
    * _vars.sh_
    * _install.control-node.sh_
  * _**neutron/**_  # Generic Scripts, Variables & Templates for **Neutron** Network Service Installation  
    * _vars.sh_
    * _install.control-node.sh_
    * _install.network-node.sh_
    * _install.compute-node.sh_
    * _**linuxbridge/**_
      * _configure.control-node.sh_
      * _configure.network-node.sh_
      * _configure.compute-node.sh_
    * _**openvswitch/**_
      * _configure.control-node.sh_
      * _configure.network-node.sh_
      * _configure.compute-node.sh_
* _**nodes/**_      # Configuration files, Variables, Scripts & Templates to Install & Configure specific Installation Nodes
  * _**control1/**_
    * _vars.sh_
    * _install.sh_
    * _post-install.sh_
  * _**compute1/**_
    * _vars.sh_
    * _install.sh_
