# Directory Structure of COA-Lab Installation Script

This file describes the Directory Structure used in the COA-Lab Installation Script.
It heps you find the files you need to edit, in case you want to override defaults.

* _vars/_       # Here you find all files with Global Variables, like Passwords, Hostnames, IP Addresses
  * _GlobalPasswords.sh_
  * _GlobalParameters.sh_
* _templates/_  # All Global file Templates
  * etc.hosts
* _lib/_        # Global Script Libraries
  * _CommonBashFunctions.sh_
* _services/_   # Generic Scripts, Variables & Templates used to install OpenStack Services
  * _keystone/_ # Scripts, Variables & Templates for **Keystone** Identity Service Installation
    * _vars.sh_
    * _install.control-node.sh_
  * neutron/  # Generic Scripts, Variables & Templates for **Neutron** Network Service Installation  
    * _vars.sh_
    * _install.control-node.sh_
    * _install.network-node.sh_
    * _install.compute-node.sh_
    * _linuxbridge/_
      * _configure.control-node.sh_
      * _configure.network-node.sh_
      * _configure.compute-node.sh_
    * _openvswitch/_
      * _configure.control-node.sh_
      * _configure.network-node.sh_
      * _configure.compute-node.sh_
* _nodes/_      # Configuration files, Variables, Scripts & Templates to Install & Configure specific Nodes
  * _control1/_
    * _vars.sh_
    * _install.sh_
    * _post-install.sh_
  * _compute1/_
    * _vars.sh_
    * _install.sh_
