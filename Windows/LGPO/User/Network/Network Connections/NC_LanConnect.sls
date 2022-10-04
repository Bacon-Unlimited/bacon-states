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
# LOCATION: \User\Network\Network Connections\NC_LanConnect.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Determines whether users can enable/disable LAN connections.
# 
# If you enable this setting, the Enable and Disable options for LAN connections are available to users (including nonadministrators). Users can enable/disable a LAN connection by double-clicking the icon representing the connection, by right-clicking it, or by using the File menu.
# 
# If you disable this setting (and enable the "Enable Network Connections settings for Administrators" setting), double-clicking the icon has no effect, and the Enable and Disable menu items are disabled for all users (including administrators).
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you do not configure this setting, only Administrators and Network Configuration Operators can enable/disable LAN connections.
# 
# Note: Administrators can still enable/disable LAN connections from Device Manager when this setting is disabled.
Ability to Enable/Disable a LAN connection:
  lgpo.set:
  - name: NC_LanConnect
  - setting: Enabled
  - policy_class: User
