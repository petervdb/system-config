# List of common packages I want on all my systems

sysstat:             # ID declaration
  pkg.installed:       # function declaration
    - name: sysstat
  service.running:
    - enable: True
vim:
  pkg.installed:
    - name: vim

findutils:
  pkg.installed:
    - name: findutils

rsync:
  pkg.installed:
    - name: rsync

cvs:
  pkg.installed:
    - name: cvs

git:
  pkg.installed:
    - name: git

gitk:
  pkg.installed:
    - name: gitk

