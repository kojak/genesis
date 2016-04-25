Genesis T3Kit 
=============
The genesis project is a set of scripts used to automate the provisioning and deployment of the Pixelant t3kit for the cloud.  The scripts are optimised for the Ubuntu Linux distribution.


Installation Instructions
------------------------

Checkout the contents of the Genesis git repository to a suitable directory on your host and executre the relevant Stackscript
```
[root@localhost]# cd ~/workspace
[root@localhost]# git clone https://github.com/sbadakhc/geneis.git
[root@localhost]# cd genesis/Stackscripts
[root@localhost]# ./wapsrv
```

Description
-----------

This repository contains two Stackscripts.  

1. wapsrv - The web application server script used to provision t3kit.
2. depsrv - The deployment server which provides the offline dependencies.
