# windows:SUPPORTED_Windows8
#
# This policy allows you to turn Windows Defender SmartScreen on or off.  SmartScreen helps protect PCs by warning users before running potentially malicious programs downloaded from the Internet.  This warning is presented as an interstitial dialog shown before running an app that has been downloaded from the Internet and is unrecognized or known to be malicious.  No dialog is shown for apps that do not appear to be suspicious.
# 
# Some information is sent to Microsoft about files and programs run on PCs with this feature enabled.
# 
# If you enable this policy, SmartScreen will be turned on for all users.  Its behavior can be controlled by the following options:
# 
#  Warn and prevent bypass
#  Warn
# 
# If you enable this policy with the "Warn and prevent bypass" option, SmartScreen's dialogs will not present the user with the option to disregard the warning and run the app.  SmartScreen will continue to show the warning on subsequent attempts to run the app.
# 
# If you enable this policy with the "Warn" option, SmartScreen's dialogs will warn the user that the app appears suspicious, but will permit the user to disregard the warning and run the app anyway.  SmartScreen will not warn the user again for that app if the user tells SmartScreen to run the app.
# 
# If you disable this policy, SmartScreen will be turned off for all users.  Users will not be warned if they try to run suspicious apps from the Internet.
# 
# If you do not configure this policy, SmartScreen will be enabled by default, but users may change their settings.
Configure Windows Defender SmartScreen:
  lgpo.set:
  - name: ShellConfigureSmartScreen
  - setting:
      ShellConfigureSmartScreen_Dropdown: enum-placeholder
  - policy_class: Machine
