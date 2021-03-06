# Getting started
Now we need Saltstack for this to work.
And we gonna configure this that we don't need a master.
There are some requirements needed to use this:
- internet connectivity to be able to download software packages
- root access on your system

## Installation on (Intel based) Ubuntu related operating systems
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
## Installation on ARM64 based Ubuntu systems
The default installation steps did not work on my Odroid device which runs on ARM based Ubuntu system.
I was able to install Salt using this command: 
```
sudo ./bootstrap_salt.sh -r -P git
```
It does take significantly more time to install it, but it did the trick.

## Telling Salt to run masterless
Edit file /etc/salt/minion

Search for file_client
```
file_client: local
```
By default salt files need to be in /srv/salt. 

Or you can copy the salt folder,located in data,  to /srv/salt or you can make a symlink from /srv/salt to the salt folder in this repository.

## Things to look at before you start
Before you execute salt, have a look at data/salt/add_users_template.sls
You have 2 options here:
- copy data/salt/add_users_template.sls to  data/salt/add_users.sls and modify add_users.sls
- or leave it as it is if you don't want that certain users get created automatically

## Running Salt to configure/update your system

Execute the following command to setup your system:
```
salt-call --local state.apply
```
This will install the common software packages.

