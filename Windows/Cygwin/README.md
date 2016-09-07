#### Cygwin setup

- Install Cygwin with these packages (unselect everything else):

```
_autorebase
base-cygwin
base-files
bash
bzip2
coreutils
cygwin
dash
diffutils
findutils
gawk
grep
groff
gzip
hostname
info
less
login
make
rebase
sed
tar
terminfo
which
yasm
```

###### Tinify setup
- Go to the Cygwin base directory
- Remove all files in var/log
- Remove all files in usr/include
- Remove all files in usr/share/man
- Remove all files in usr/share/info
- Remove all files in usr/share/locale
- Remove all files except licences in usr/share/doc
- Remove all files except Etc/UTC in usr/share/zoneinfo
- Remove all files except 63/cygwin in usr/share/terminfo

- In the bin directory run:
```
rm awk
mv gawk-* awk.exe
bash -c "/bin/cp /usr/share/Etc/UTC /etc/localtime"
find /usr /var -type d -empty -exec touch {}/.keep \;
```
