QT_LOGGING_RULES='*=false'
export QT_LOGGING_RULES
if [[ $(id -u) -eq 0 ]]
then 
    echo
    echo "PROBLEM: INSTALLING AS ROOT"
    echo
    echo "It is advisable that you install LucasChess as a normal user and not as root."
    read -e -p "Do you wish to continue installing? (yn) " yn
    if [[ "$yn" != "y" ]]
    then
        echo
        echo "....exiting...."
        echo
        exit
    fi
fi
cd bin
./setup_linux
