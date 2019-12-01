#!/bin/bash

# Good Tutorials
# https://ryanstutorials.net/bash-scripting-tutorial/

# Define some variables for use in the functions.

VIDEO_EXTENSION=*.mov
IMAGE_EXTENSION=*.jpg

SOURCE_PATH=/c/temp
DESTINATION_PATH=./

# Define some resuable functions
function moveFiles () {
    mv -i $SOURCE_PATH/$IMAGE_EXTENSION -t $DESTINATION_PATH
}

function moveVideos () {
    mv -i $SOURCE_PATH/$VIDEO_EXTENSION -t $DESTINATION_PATH
}

function moveBoth () {
    moveFiles
    moveVideos
}

# This is the main processing loop and will continue until CNTL + C is pressed
while true; do 
    clear
    echo "1 Move Files."
    echo "2 Move Video."
    echo "3 Move Both."
    echo "CNTL + C to Quit"
    read response
    if [ $response = 1 ]; then
        moveFiles
    elif [ $response = 2 ]; then 
        moveVideos
    elif [ $response = 3 ]; then
        moveBoth
    else
        echo "incorrect choice dingus"
        sleep 2
    fi
done
