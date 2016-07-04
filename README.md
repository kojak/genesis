Genesis 
=======
The genesis project is a set of Stackscripts, written in BASH, used to automate the provisioning and deployment of various LAMP environments. These include the Pixelant t3kit for cloud deployment as well as wordpress and other common web application stacks. 


Installation Instructions for t3kit
-----------------------------------

You must first create a deployment server and make sure that all future web applciation servers you deploy have network access to it.  Checkout the contents of the Genesis git repository to a suitable directory on your target host and execute the depsrv Stackscript.
```
[root@localhost]# cd ~/workspace
[root@localhost]# git clone https://github.com/sbadakhc/geneis.git
[root@localhost]# cd genesis/Stackscripts
[root@localhost]# ./depsrv
```

To deploy a t3kit web application server simply repeat the procedure but use the websrv Stackscript.
```
[root@localhost]# cd ~/workspace
[root@localhost]# git clone https://github.com/sbadakhc/geneis.git
[root@localhost]# cd genesis/Stackscripts
[root@localhost]# ./wapsrv
```

Installation Instructions for Wordpress 
---------------------------------------

To deploy a wordpress LAMP stack on CentOS.
```
[root@localhost]# cd ~/workspace
[root@localhost]# git clone https://github.com/sbadakhc/geneis.git
[root@localhost]# cd genesis/Stackscripts
[root@localhost]# ./wpdsrv


Description
-----------

This repository contains the follwing Stackscripts.  

1. wapsrv - The web application server script used to provision t3kit on Ubuntu.
2. depsrv - The deployment server which provides the various offline repositories to satisfy t3kit dependencies for Ubuntu.
3. devops - A microservices devops stackscript for CenOS.
4. wpdsrv - A wordpress LAMP stackscript for CentOS.

