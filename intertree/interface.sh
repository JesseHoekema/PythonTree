#!/bin/bash

echo -ne "\033]0;InterTree - PythonTree Library Interface\007"
echo "Welcome To InterTree"
echo "Interface For PythonTree Library"
echo "Using The Tree Libary For Python"
echo "tree = Run Tree"
echo "exit = Exit the program"

while true; do
    # Prompt the user for a command
    read -p ">>> " command

    # Check if the user wants to run the tree command
    if [ "$command" = "tree" ]; then
        python main.py
        continue  # Continue to the next iteration after running the command
    fi

    # Check if the user wants to exit
    if [ "$command" = "exit" ]; then
        echo "Exiting the mini terminal."
        break
    fi

    # Execute any other command
    eval "$command"
done

