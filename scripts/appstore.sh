function installMacAppStoreApps {
  echo
  echo "Installing through the App Store"
  # mas-cli = command line interface for the Mac App Store
  brew install mas
  # app are installed with their Mac App Store product identifier
  mas 'Pixelmator', id: 407963104
  mas 'Spark', id: 1176895641
}


read -p "Do you want to install install Mac App Store only applications (y/n)? " answer
case ${answer:0:1} in
    y|Y|yes )
        installMacAppStoreApps
    ;;
    * )
        echo "Skipping appstore.sh script"
    ;;
esac
