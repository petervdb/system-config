# List of common packages I want on all my systems

sysstat:             # ID declaration
  pkg:                # state declaration
    - installed       # function declaration

vim:
  pkg.installed:
    - name: git

findutils:
  pkg.installed:
    - name: findutils

rsync:
  pkg.installed:
    - name: rsync

