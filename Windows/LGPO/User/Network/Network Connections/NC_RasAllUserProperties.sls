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
# LOCATION: \User\Network\Network Connections\NC_RasAllUserProperties.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2kSP1
#
# Determines whether a user can view and change the properties of remote access connections that are available to all users of the computer.
# 
# To create an all-user remote access connection, on the Connection Availability page in the New Connection Wizard, click the "For all users" option.
# 
# This setting determines whether the Properties menu item is enabled, and thus, whether the Remote Access Connection Properties dialog box is available to users.
# 
# If you enable this setting, a Properties menu item appears when any user right-clicks the icon for a remote access connection. Also, when any user selects the connection, Properties appears on the File menu.
# 
# If you disable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Properties menu items are disabled, and users (including administrators) cannot open the remote access connection properties dialog box.
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you do not configure this setting, only Administrators and Network Configuration Operators can change properties of all-user remote access connections.
# 
# Note: This setting takes precedence over settings that manipulate the availability of features inside the Remote Access Connection Properties dialog box. If this setting is disabled, nothing within the properties dialog box for a remote access connection will be available to users.
# 
# Note: This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.
Ability to change properties of an all user remote access connection:
  lgpo.set:
  - name: NC_RasAllUserProperties
  - setting: Enabled
  - policy_class: User
