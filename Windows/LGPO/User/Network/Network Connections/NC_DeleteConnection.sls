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
# LOCATION: \User\Network\Network Connections\NC_DeleteConnection.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2kSP1
#
# Determines whether users can delete remote access connections.
# 
# If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), users (including administrators) cannot delete any remote access connections. This setting also disables the Delete option on the context menu for a remote access connection and on the File menu in the Network Connections folder.
# 
# Important:  If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting or do not configure it, all users can delete their private remote access connections. Private connections are those that are available only to one user. (By default, only Administrators and Network Configuration Operators can delete connections available to all users, but you can change the default by using the "Ability to delete all user remote access connections" setting.)
# 
# Important: When enabled, this setting takes precedence over the "Ability to delete all user remote access connections" setting. Users cannot delete any remote access connections, and the "Ability to delete all user remote access connections" setting is ignored.
# 
# Note: LAN connections are created and deleted automatically when a LAN adapter is installed or removed. You cannot use the Network Connections folder to create or delete a LAN connection.
# 
# Note: This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.
Prohibit deletion of remote access connections:
  lgpo.set:
  - name: NC_DeleteConnection
  - setting: Enabled
  - policy_class: User
