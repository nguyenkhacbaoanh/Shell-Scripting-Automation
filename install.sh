#! /bin/bash

# echo -e "Project name: "
# read projectname

projectname=$1
echo -e "Project name: ${projectname}"

# test if the name of project is already existed
if [ -e ${projectname} ]
then
    # test the folder exist is empty or not
    if  find ${projectname} -mindepth 1 | read 
    then
        # not empty so user need to choose the other name project
        echo "project ${projectname} is existed and contain some files"
        # this is the loop infinitif until user choose the right folder name
        echo -e "use an other name, please!: \c"
        read projectname
        bash install.sh ${projectname}
    else
        # in the case folder exist but this is a empty folder
        # override this folder name
        echo "project ${projectname} is existed but empty"
        echo "remove ${projectname}"
        # override by remove this folder and lauch this bash file
        rm -rf ${projectname}
        bash install.sh ${projectname}
    fi
else
    mkdir ${projectname} && cd ${projectname}
    echo "project ${projectname} is created"
    # establish a username and password, or declare version project
    echo -e "User name: \c"
    read username
    echo -e "User password: \c"
    read -s password
    # store in a file secret
    echo "USERNAME:${username} \nPASSWORD:${password}" > .secretfile
    # ignore secret file by .gitignore
    echo ".secretfile" > .gitignore
    echo -e "\nVersion: \c"
    read version
    echo -e "Description project: \c"
    read description
    # create a text file
    echo "Project name: ${projectname} \nVersion: ${version} \nDescription: ${description}" > text.txt
    # activate an environment local
    # create some of dir like src, service, media, static file folder

fi