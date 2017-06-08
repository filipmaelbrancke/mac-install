function installMacAppStoreApps {
  echo
  echo "Installing through the App Store"
  # mas-cli = command line interface for the Mac App Store
  brew install mas
  # apps are installed with their Mac App Store product identifier
  mas 'Pixelmator', id: 407963104
  mas 'Spark', id: 1176895641
  mas 'Parallels Desktop Lite', id: 1085114709
  mas 'Jayson - Visual JSON Editor', id: 1189824719
}


read -p "Do you want to install Mac App Store only applications (y/n)? " answer
case ${answer:0:1} in
    y|Y|yes )
        installMacAppStoreApps
    ;;
    * )
        echo "Skipping appstore.sh script"
    ;;
esac
