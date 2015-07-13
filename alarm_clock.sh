#! /bin/bash                                                                                                                                                                     

#To-do: 
#change $1 into the absolute path         
#allow the script to play several times the same file
#how to kill everyything?

cd $1

play(){
    while :
    do
        #echo "playing file from list.dat"                                                                                                                                       
        file_to_play=$(head -1 list.dat)
        #echo "file to play is " ${file_to_play}                                                                                                                                 
        #Use the absolute path, otherwise it doesn't work properly                                                                                                               
        /usr/bin/mplayer /home/gfasanel/$1${file_to_play}
        sed -i "/${file_to_play}/d" /home/gfasanel/$1list.dat
    done
}

if [ -e list.dat ];then
    play $1
else
    ls > list.dat; sed -i "/list.dat/d" list.dat;
    #list.dat should not be in the list of files                                                                                                                                 
    play $1
fi

cd -
