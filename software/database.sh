#!/bin/bash
echo 
echo -e "\e[34m THE MENU \e[0m"  # Blue-colored text
echo "---------------------------------------"
select choice in "Create Database" "List Databases" "Connect Database" "Drop Database" "Exit"; do
    case $choice in
        "Create Database")
            echo "Creating Database"
            chmod u+x  create_database.sh
            . ./create_database.sh
            ;;
        "List Databases")
            echo "Listing Databases"
             chmod u+x  list_database.sh
            . ./list_database.sh
            ;;
        "Connect Database")
            echo "Connecting Database"
            chmod u+x  connectdb.sh
            . ./connectdb.sh
            ;;
        "Drop Database")
            echo "Dropping Database"
             chmod u+x  drop_database.sh
            . ./drop_database.sh
            ;;
        "Exit")
            echo "Exiting"
            break
            ;;
        *)
            echo "$choice is not valid"
            ;;
    esac
done