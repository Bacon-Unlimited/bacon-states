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
# LOCATION: \User\Network\Network Connections\NC_Statistics.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_Win2kSP1_WindowsPreVista
#
# Determines whether users can view the status for an active connection.
# 
# Connection status is available from the connection status taskbar icon or from the Status dialog box. The Status dialog box displays information about the connection and its activity. It also provides buttons to disconnect and to configure the properties of the connection.
# 
# If you enable this setting, the connection status taskbar icon and Status dialog box are not available to users (including administrators). The Status option is disabled in the context menu for the connection and on the File menu in the Network Connections folder. Users cannot choose to show the connection icon in the taskbar from the Connection Properties dialog box.
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting or do not configure it, the connection status taskbar icon and  Status dialog box are available to all users.
Prohibit viewing of status for an active connection:
  lgpo.set:
  - name: NC_Statistics
  - setting: Enabled
  - policy_class: User
