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
# LOCATION: \User\Network\Network Connections\NC_RenameConnection.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_Win2kSP1_WindowsPreVista
#
# Determines whether users can rename LAN or all user remote access connections.
# 
# If you enable this setting, the Rename option is enabled for all users. Users can rename connections by clicking the icon representing a connection or by using the File menu.
# 
# If you disable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Rename option for LAN and all user remote access connections is disabled for all users (including Administrators and Network Configuration Operators).
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If this setting is not configured, only Administrators and Network Configuration Operators have the right to rename LAN or all user remote access connections.
# 
# Note: When configured, this setting always takes precedence over the "Ability to rename LAN connections" and "Ability to rename all user remote access connections" settings.
# 
# Note: This setting does not prevent users from using other programs, such as Internet Explorer, to rename remote access connections.
Ability to rename LAN connections or remote access connections available to all users:
  lgpo.set:
  - name: NC_RenameConnection
  - setting: Enabled
  - policy_class: User
