#! /bin/bash

#check a folder exists

echo -e "create your folder project: \c"

read folder

# using a bash file install.sh to create a folder project
bash install.sh $folder

# test if the folder exists
if [ -e $folder ]
then
    # test in this folder, if having some text file
    cd $folder
    if [ -f *.txt ]
    then
        echo "folder $folder have the text file"
        # try to wrap the file name
        name=$(ls | grep ".txt")
        # echo ${name}
        # test if this file have a write permission
        if [ -w ${name} ]
        then
            echo "the text in file"
            # its content before entring
            cat ${name}
            # ask the user if they want to entry this file
            echo -e "\nDo you want entry some text in this file? (Yes/n) \c"
            read reponse
            # echo $reponse
            if [[ ${reponse} -eq "Yes" ]] || [[ ${reponse} -eq "Y" ]] || [[ ${reponse} -eq "y" ]]
            then 
                echo "entry some text in ${name}. to save use ctrl+d "
                # feel free to entry some text in terminal
                cat >> ${name} # two > means append some text, one > means override this file
                echo "The text after modifying "
                # its content after the action above
                cat ${name}
            else
                # if users reponse is No or other reponse
                echo "You don't want to modify this file, Ok, i'm out"
            fi
        else
            echo "the text have no write permission."
        fi
    else
        echo "folder $folder dont have the text file"
    fi
else
    echo "folder $folder is empty"
fi