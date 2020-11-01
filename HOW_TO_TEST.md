# How to test this

There are multiple options available.

## Make a new user on an existing Mac machine
 
- `Settings` > `User & Groups`
- Click the `+` icon on the bottom
- Make a new user with `admin` rights
- Login with the newly created account to test the script there

## Run MacOSX in a VirtualBox

- Follow [this execellent guide](https://www.soupbowl.io/2020/04/macos-in-virtualbox/)
- Make a `VirtualBox` `snapshot` after install to easily revert to a fresh installation.

Change the resolution to 1920x1080:

```
VBoxManage setextradata "MacOSCatalina" VBoxInternal2/EfiGraphicsResolution 1920x1080
```

### Share

You can share a folder from your host Mac to your virtual Mac by using the `File Sharing` option.

Go to:
- `Settings` > `Sharing`
- `File Sharing`
- Add the folder you wish to share
- Enable it.

On the virtual Mac go to:
- `Finder`
- Click on `Go to Server`
- Enter the address as seen on your host `Mac`
  - eg: `smb://192.168.1.2`
- Select the drive you wish to mount

