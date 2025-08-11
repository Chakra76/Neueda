#program that scan list of file from ls -ltr output in the current directory
#and identify the type in the output, i.e., if it is a file or directory
#and display the output accordingly

for i in $(ls -ltr) #also can use ./* instead of $(ls -ltr)
do
    if [ -f "$i" ] #check if the value contained in i is a file 
    then
	#display only the filename but not the other attributes
        #basename command display simply the filename and nothing else
        echo $(basename "$i")" is a file" 
    elif [ -d "$i" ] #check if the value contained in i is a directory 
    then
	#basename command here displays only the directory name and not other attributes
        echo $(basename "$i")" is a directory"
    fi
done
