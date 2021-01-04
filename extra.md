# Extra changes to make to OS X


## Disable Diagnostics
To avoid sending data to Apple or App Developers disable the following:

* System Preferences → Security & Privacy → Privacy → Analytics
* Uncheck “Share Mac Analytics”
* Uncheck “Share with App Developers”.
* Uncheck “Share iCloud Analytics”
* Under Advertising
* Check "Limit Ad Tracking"

---

## Disable Handoff
Apples Handoff is a feature to keep your workspaces in sync but it does require to send data to Apple which is recommended to be disabled.

* System Preferences → General
* Uncheck “Allow Handoff between this Mac and your iCloud devices”
* Set “Recent Items” to none. You will find this inside of the dropdown box right above the Handoff option.

---

## Use Caps Lock as Escape in macOS
The 16" MacBook Pro ditched the 'butterfly' keyboard, and also made the 'esc' key a physical button again. But the previous years of working on 15" MacBook Pro's with a Touch Bar made me get into the habit or mapping the 'esc' button to another, more convenient key.

To map Escape to Caps Lock, do the following:

* From the Apple menu, open System Preferences…
* Open Keyboard
* Open Modifier Keys…
* Select Caps Lock as the Escape key

---

## Tune auto-starting applications
Skype seems to think it is important enough to enjoy auto startup:

* From the Apple menu, open System Preferences…
* Users & Groups
* Current User
* Login items
* Remove Skype For Business
* In terminal: `sudo launchctl remove com.skype.skype.shareagent`  (found with `launchctl list | grep skype)

---
