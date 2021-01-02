# Pulls in the included script
source every_script.ksh




init() 
{
   echo "init"

# Show what is mounted
   mount -v | grep "cifs"

# Unmount
#  sudo umount /home/steve/shared

}

error_occurred()
{
   echo "error " ${1}
   exit 1
}


mount_the_win_dir()
{
   (sudo mount -v -t cifs -o password=${FNCSERVER3_PASSWORD},username=steve,sec=ntlmsspi //192.168.1.223/share /home/steve/shared) && (echo "here") || error_occurred "mount failed"

}





# Starts here..........

init

# Calls a function from the included script
every_script_start

mount_the_win_dir

every_script_end


############### END ##############
