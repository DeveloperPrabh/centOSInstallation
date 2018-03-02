#!/bin/bash
# Bash Menu Script Example

createRecord() {
read -p 'Given Name: ' givenName
read -p 'Surname: ' surName
read -p 'Address: ' address
read -p 'City: ' city
read -p 'State: ' state
read -p 'Zip: ' zip

read -p "Are these records correct? Yes or No: " userResponse

select opt in "${userResponse}"
do
    case $userResponse in
        "yes")
        $givenName $surName $address $city $state $zip >> userFile.txt
        echo "done!"
        ;;

        "no")
        break
        ;;
        *) echo invalid option;;

    esac
done



}
echo " SHELL PROGRAMMING DATABASE "
echo " MAIN MENU "

PS3='What Do You Wish to Do? '
options=("Create Record" "View Record" "Search Record" "Delete Record" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Create Record")
            createRecord

            ;;
        "View Record")
            echo "you chose choice 2"
            ;;
        "Search Record")
            echo "you chose choice 3"
            ;;

        "Delete Record")
	    echo "you chose option 4"
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
 
   esac
done


