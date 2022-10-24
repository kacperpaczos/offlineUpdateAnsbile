Ansible To Offiline Upgrade Packages on Debian OR By 3Proxy
=========

HOW TO USE
=========
1) Install 3proxy on your computer, on Linux you can use script:
   1) In file "3proxy.cfg" add "external IP" entity for each client, for example
      1) external 1.2.3.4
      2) external 5.6.7.8
      3) external 9.10.11.12
      4) external 12.13.14.15
   2) next, run script by: 
      1) sudo ./"Install 3proxy on GNU Linux Ubuntu Debian.sh"
2) Run the Playbook
   1) complete the address list in the notAproduction.yml
   2) Command to run from root folder: ansible-playbook -i ./inventories/notAProduction/notAproduction.yml ./playbook.yml
