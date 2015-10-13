#! /bin/bash                                                                    
cd $1

play(){
    while :
    do
        #echo "playing file from list.dat"                                                                                                                                       
        file_to_play=$(head -1 list.dat)
        #echo "file to play is " ${file_to_play}                                                                                                                                 
        #Use the absolute path, otherwise it doesn't work properly                                                                                                               
        /usr/bin/omxplayer $1${file_to_play}
        sed -i "/${file_to_play}/d" list.dat

	#if size of list.dat is 0 (you have just removed the last .mp3 in the list): re-generate list.dat
	if [ ! -s list.dat ]; then
	    ls -v > list.dat; sed -i "/list.dat/d" list.dat
	fi

    done
}

#play file if list.dat exists and it's not empty (size is not zero)
if [ -e list.dat ] && [ -s list.dat ];then
    play $1
else
    #ls -v: numerical order
    ls -v > list.dat; sed -i "/list.dat/d" list.dat;
    #list.dat should not be in the list of files                                                                                                                                 
    play $1
fi

cd -
