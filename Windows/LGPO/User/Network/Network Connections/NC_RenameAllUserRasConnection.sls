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
# LOCATION: \User\Network\Network Connections\NC_RenameAllUserRasConnection.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Determines whether nonadministrators can rename all-user remote access connections.
# 
# To create an all-user connection, on the Connection Availability page in the New Connection Wizard, click the "For all users" option.
# 
# If you enable this setting, the Rename option is enabled for all-user remote access connections. Any user can rename all-user connections by clicking an icon representing the connection or by using the File menu.
# 
# If you disable this setting, the Rename option is disabled for nonadministrators only.
# 
# If you do not configure the setting, only Administrators and Network Configuration Operators can rename all-user remote access connections.
# 
# Note: This setting does not apply to Administrators
# 
# Note: When the "Ability to rename LAN connections or remote access connections available to all users" setting is configured (set to either Enabled or Disabled), this setting does not apply.
# 
# Note: This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.
Ability to rename all user remote access connections:
  lgpo.set:
  - name: NC_RenameAllUserRasConnection
  - setting: Enabled
  - policy_class: User
