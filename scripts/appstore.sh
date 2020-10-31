function installMacAppStoreApps {
  echo
  echo "Installing through the App Store"
  # mas-cli = command line interface for the Mac App Store
  brew install mas
  # apps are installed with their Mac App Store product identifier
  # 'Airmail', id: 993160329
  mas install 993160329
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
