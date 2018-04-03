# List of common packages I want on all my systems

sysstat:             # ID declaration
  pkg:                # state declaration
    - installed       # function declaration

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

