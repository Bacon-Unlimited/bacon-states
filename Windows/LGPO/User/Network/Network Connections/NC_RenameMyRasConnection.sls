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
# LOCATION: \User\Network\Network Connections\NC_RenameMyRasConnection.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2kSP1
#
# Determines whether users can rename their private remote access connections.
# 
# Private connections are those that are available only to one user. To create a private connection, on the Connection Availability page in the New Connection Wizard, click the "Only for myself" option.
# 
# If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Rename option is disabled for all users (including administrators).
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting or do not configure it, the Rename option is enabled for all users' private remote access connections. Users can rename their private connection by clicking an icon representing the connection or by using the File menu.
# 
# Note: This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.
Prohibit renaming private remote access connections:
  lgpo.set:
  - name: NC_RenameMyRasConnection
  - setting: Enabled
  - policy_class: User
