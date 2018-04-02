Now we need Saltstack for this to work.
And we gonna configure this that we don't need a master.
There are some requirements needed to use this:
- internet connectivity to be able to download software packages
- root access on your system

First, bootstrap your workstation:
Reference: https://docs.saltstack.com/en/latest/topics/tutorials/quickstart.html

This will take a few minutes, depending on how fast your internet connection is:

curl -L https://bootstrap.saltstack.com -o bootstrap_salt.sh
sudo sh bootstrap_salt.sh

Telling Salt to run masterless
---
Edit file /etc/salt/minion
Search for file_client

file_client: local

