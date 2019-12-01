# Media File Mover

This is a simple shell script to move a certain file extensions from one directory to another.  Mainly targeting media files, but can be any format you wish.

Be sure to review the follwing variables 

```
VIDEO_EXTENSION_ARRAY=( "*.mov" "*.vom" )
IMAGE_EXTENSION=*.jpg

SOURCE_PATH=/c/temp
DESTINATION_PATH=./
```
## Running the media file mover
From a Git Bash prompt

`./moveFile.sh`

You'll then be prompted what to move.
```
1. Move Files
2. Move Video
3. Move Both
CNTL + C to Quit
```