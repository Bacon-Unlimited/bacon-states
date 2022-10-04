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
# LOCATION: \User\Network\Network Connections\NC_AddRemoveComponents.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_Win2kSP1_WindowsPreVista
#
# Determines whether administrators can add and remove network components for a LAN or remote access connection. This setting has no effect on nonadministrators.
# 
# If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Install and Uninstall buttons for components of connections are disabled, and administrators are not permitted to access network components in the Windows Components Wizard.
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting or do not configure it, the Install and Uninstall buttons for components of connections in the Network Connections folder are enabled. Also, administrators can gain access to network components in the Windows Components Wizard.
# 
# The Install button opens the dialog boxes used to add network components. Clicking the Uninstall button removes the selected component in the components list (above the button).
# 
# The Install and Uninstall buttons appear in the properties dialog box for connections. These buttons are on the General tab for LAN connections and on the Networking tab for remote access connections.
# 
# Note: When the "Prohibit access to properties of a LAN connection", "Ability to change properties of an all user remote access connection", or "Prohibit changing properties of a private remote access connection" settings are set to deny access to the connection properties dialog box, the Install and Uninstall buttons for connections are blocked.
# 
# Note: Nonadministrators are already prohibited from adding and removing connection components, regardless of this setting.
Prohibit adding and removing components for a LAN or remote access connection:
  lgpo.set:
  - name: NC_AddRemoveComponents
  - setting: Enabled
  - policy_class: User
