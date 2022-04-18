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
