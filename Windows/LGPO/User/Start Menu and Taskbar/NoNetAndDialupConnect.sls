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
# LOCATION: \User\Start Menu and Taskbar\NoNetAndDialupConnect.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVistaTo2k
#
# This policy setting allows you to remove Network Connections from the Start Menu.
# 
# If you enable this policy setting, users are prevented from running Network Connections.
# 
# Enabling this policy setting prevents the Network Connections folder from opening. This policy setting also removes Network Connections from Settings on the Start menu.
# 
# Network Connections still appears in Control Panel and in File Explorer, but if users try to start it, a message appears explaining that a setting prevents the action.
# 
# If you disable or do not configure this policy setting, Network Connections is available from the Start Menu.
# 
# Also, see the "Disable programs on Settings menu" and "Disable Control Panel" policy settings and the policy settings in the Network Connections folder (Computer Configuration and User Configuration\Administrative Templates\Network\Network Connections).
Remove Network Connections from Start Menu:
  lgpo.set:
  - name: NoNetAndDialupConnect
  - setting: Enabled
  - policy_class: User
