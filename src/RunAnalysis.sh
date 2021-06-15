#!/bin/bash
clear
echo -e "Welcome to the Root Execution and Analysis tool\n\n"

ExecutionOptions="Which executable would you like to run?\n\t1: Square Root\n\t2: Qube Root\n\t3: Both!\n"
echo -e $ExecutionOptions

read -p ":) " executionOption
clear

case $executionOption in
    "1")
        echo " ! Building Executable! "
        gcc -o sRoot sRoot.c
        chmod  +x sRoot

        echo -e "\nSquare Root"
        time ./sRoot
        ;;
    "2")
        echo " ! Building Executable! "
        gcc -o qRoot qRoot.c
        chmod  +x qRoot

        echo -e "\nQube Root"
        time ./qRoot
        ;;
    "3")
        echo " ! Building Executables! "

        gcc -o sRoot sRoot.c
        chmod  +x sRoot

        echo -e "\nSquare Root"
        time ./sRoot
        

        gcc -o qRoot qRoot.c
        chmod  +x qRoot

        echo -e "\nQube Root"
        time ./qRoot
        ;;
    *)
        echo -e "\nInvalid Entry\n\n\t ! TERMINATING SCRIPT !\n"
        exit
esac