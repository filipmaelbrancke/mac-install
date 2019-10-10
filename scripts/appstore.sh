function installMacAppStoreApps {
  echo
  echo "Installing through the App Store"
  # mas-cli = command line interface for the Mac App Store
  brew install mas
  # apps are installed with their Mac App Store product identifier
  # 'Pixelmator', id: 407963104
  mas install 407963104
  # 'Spark', id: 1176895641
  mas install 1176895641
  # 'Parallels Desktop Lite', id: 1085114709
  mas install 1085114709
  # 'Jayson - Visual JSON Editor', id: 1189824719
  mas install 1189824719
  # 'Amphetamine - Powerful keep-awake utility', id: 937984704
  mas install 937984704
  # ...
  # byword
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
