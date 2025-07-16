#Linux shell script
#commands to search a file and extract words using delimiter
#To get the default shell of logged in user
awk -v u="$USER" -F: '$1 == u {print $NF}' /etc/passwd
grep $USER /etc/passwd | grep -Eo '[^:]*$'

#To get the current OS name and its release version
uname -r
grep -w -e "NAME" -e "VERSION" /etc/os-release

