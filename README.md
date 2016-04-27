Genesis 
=======
The genesis project is a set of Stackscripts, wriiten in BASH, used to automate the provisioning and deployment of the Pixelant t3kit for cloud deployment.  The scripts are optimised for the Ubuntu Linux distribution.


Installation Instructions
------------------------

You must first create a deployment server and make sure that all future web applciation servers you deploy have network access to it. 
Checkout the contents of the Genesis git repository to a suitable directory on your target host and execute the relevant Stackscript.
```
[root@localhost]# cd ~/workspace
[root@localhost]# git clone https://github.com/sbadakhc/geneis.git
[root@localhost]# cd genesis/Stackscripts
[root@localhost]# ./depsrv
```

Repeat the procedure for the t3kit web applciaiton servers but use the websrv script.
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
2. depsrv - The deployment server which provides the various offline repositories to satisfy t3kit dependencies.
