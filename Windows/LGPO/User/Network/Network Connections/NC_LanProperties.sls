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
# LOCATION: \User\Network\Network Connections\NC_LanProperties.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2kSP1
#
# Determines whether users can change the properties of a LAN connection.
# 
# This setting determines whether the Properties menu item is enabled, and thus, whether the Local Area Connection Properties dialog box is available to users.
# 
# If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Properties menu items are disabled for all users, and users cannot open the Local Area Connection Properties dialog box.
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting or do not configure it, a Properties menu item appears when users right-click the icon representing a LAN connection. Also, when users select the connection, Properties is enabled on the File menu.
# 
# Note: This setting takes precedence over settings that manipulate the availability of features inside the Local Area Connection Properties dialog box. If this setting is enabled, nothing within the properties dialog box for a LAN connection is available to users.
# 
# Note: Nonadministrators have the right to view the properties dialog box for a connection but not to make changes, regardless of this setting.
Prohibit access to properties of a LAN connection:
  lgpo.set:
  - name: NC_LanProperties
  - setting: Enabled
  - policy_class: User
