for i in $(ls -ltr) #./*
do
    if [ -f "$i" ]
    then
        echo $(basename "$i")" is a file"
    elif [ -d "$i" ]
    then
        echo $(basename "$i")" is a directory"
    fi
done
