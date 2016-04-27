Genesis 
=======
The genesis project is a set of Stackscripts, wriiten in BASH, used to automate the provisioning and deployment of the Pixelant t3kit for cloud deployment.  The scripts assume a vanilla installation the Ubuntu Linux distribution and are optimised for that environment.  The minmum configuration consists of a deployment server and a web application server. 


Installation Instructions
------------------------

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

Description
-----------

This repository contains two Stackscripts.  

1. wapsrv - The web application server script used to provision t3kit.
2. depsrv - The deployment server which provides the various offline repositories to satisfy t3kit dependencies.
