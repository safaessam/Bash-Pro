 
#!/bin/bash
echo "---------------------------------------"

echo "Type your database number to connect with: "

echo "---------------------------------------"
echo "The database already exists"

cd ../databases
array=(`ls -F | grep / | tr / " "`)
select choice in "${array[@]}"; do
    if ! [[ $REPLY =~ ^[0-9]+$ ]]; then
        echo "$REPLY is not a valid number"
        continue
    elif [ $REPLY -gt ${#array[@]} ]; then
        echo "$REPLY is not on the menu"
        continue
    else
        cd "../databases/${array[$REPLY-1]}"
        echo "You are connected to ${array[$REPLY-1]} successfully :) "
        break
    fi
done
echo

echo "Type your choice number: "
echo "---------------------------------------"
select choice2 in "Create Table" "List Tables" "Drop Tables" "Insert into table" "Select table" "Delete from table" "Update table" "Quit"; do
    case $choice2 in
        "Create Table")
            echo "Create Table"
            source ../../software/create_table.sh
            ;;
        "List Tables")
            echo "List Tables"
            source ../../software/list_table.sh
            ;;
        "Drop Tables")
            echo "Drop Tables"
            source ../../software/drop_table.sh
            ;;
        "Insert into table")
            echo "Insert table"
            source ../../software/insert-into_table.sh
            ;;
        "Select table")
            echo "Select table"
            source ../../software/select_table.sh
            ;;
        "Delete from table")
            echo "Delete from table"
            source ../../software/delete-From-table.sh
            ;;
        "Update table")
            echo "Update table"
            source ../../software/update_table.sh
            ;;
        "Quit")
            break
            ;;
        *)
            echo "$REPLY is not a valid choice"
            ;;
    esac
done

cd - &> ~/../../dev/null