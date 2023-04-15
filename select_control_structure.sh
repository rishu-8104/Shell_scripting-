options=("Option 1" "Option 2" "Option 3" "Quit")
select choice in "${options[@]}"
do
  case $choice in
    "Option 1")
      echo "You selected option 1"
      ;;
    "Option 2")
      echo "You selected option 2"
      ;;
    "Option 3")
      echo "You selected option 3"
      ;;
    "Quit")
      break
      ;;
    *)
      echo "Invalid option"
      ;;
  esac
done

