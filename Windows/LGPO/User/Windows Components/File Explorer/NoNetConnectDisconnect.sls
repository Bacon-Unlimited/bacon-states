####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \User\Windows Components\File Explorer\NoNetConnectDisconnect.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Prevents users from using File Explorer or Network Locations to map or disconnect network drives.
# 
# If you enable this setting, the system removes the Map Network Drive and Disconnect Network Drive commands from the toolbar and Tools menus in File Explorer and Network Locations and from menus that appear when you right-click the File Explorer or Network Locations icons.
# 
# This setting does not prevent users from connecting to another computer by typing the name of a shared folder in the Run dialog box.
# 
# Note:
# 
# This setting was documented incorrectly on the Explain tab in Group Policy for Windows 2000. The Explain tab states incorrectly that this setting prevents users from connecting and disconnecting drives.
# 
# Note: It is a requirement for third-party applications with Windows 2000 or later certification to adhere to this setting.
Remove "Map Network Drive" and "Disconnect Network Drive":
  lgpo.set:
  - name: NoNetConnectDisconnect
  - setting: Enabled
  - policy_class: User
