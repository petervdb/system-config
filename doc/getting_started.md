# Getting started
Now we need Saltstack for this to work.
And we gonna configure this that we don't need a master.
There are some requirements needed to use this:
- internet connectivity to be able to download software packages
- root access on your system

## Installation on Ubuntu related operating systems
First, bootstrap your workstation on Ubuntu:
Reference: https://docs.saltstack.com/en/latest/topics/tutorials/quickstart.html

This will take a few minutes, depending on how fast your internet connection is:

curl -L https://bootstrap.saltstack.com -o bootstrap_salt.sh
sudo sh bootstrap_salt.sh

## Installation on OpenSuSE
If you are using OpenSUSE installation files can be found repositories provided from openSuSE

https://docs.saltstack.com/en/latest/topics/installation/suse.html

## Installation instructions for openSuSE:
```
zypper addrepo http://download.opensuse.org/repositories/systemsmanagement:/saltstack/openSUSE_Tumbleweed/systemsmanagement:saltstack.repo
zypper refresh
zypper install salt salt-minion salt-master
```

## Telling Salt to run masterless
Edit file /etc/salt/minion

Search for file_client
```
file_client: local
```
By default salt files need to be in /srv/salt. 

Or you can copy the salt folder,located in data,  to /srv/salt or you can make a symlink from /srv/salt to the salt folder in this repository.

Execute the following command to setup your system:
```
salt-call --local state.apply
```
This will install the common software packages.

