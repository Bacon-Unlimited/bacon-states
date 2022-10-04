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
# LOCATION: \User\Windows Components\File Explorer\NoViewContextMenu.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Removes shortcut menus from the desktop and File Explorer. Shortcut menus appear when you right-click an item.
# 
# If you enable this setting, menus do not appear when you right-click the desktop or when you right-click the items in File Explorer. This setting does not prevent users from using other methods to issue commands available on the shortcut menus.
Remove File Explorer's default context menu:
  lgpo.set:
  - name: NoViewContextMenu
  - setting: Enabled
  - policy_class: User
