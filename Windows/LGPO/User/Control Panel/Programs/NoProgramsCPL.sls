# windows:SUPPORTED_WindowsVista
#
# This setting prevents users from using the Programs Control Panel in Category View and Programs and Features in Classic View.
#  
# The Programs Control Panel allows users to uninstall, change, and repair programs, enable and disable Windows Features, set program defaults, view installed updates, and purchase software from Windows Marketplace. Programs published or assigned to the user by the system administrator also appear in the Programs Control Panel.
# 
# If this setting is disabled or not configured, the Programs Control Panel in Category View and Programs and Features in Classic View will be available to all users.
# 
# When enabled, this setting takes precedence over the other settings in this folder.
# 
# This setting does not prevent users from using other tools and methods to install or uninstall programs.
Hide the Programs Control Panel:
  lgpo.set:
  - name: NoProgramsCPL
  - setting: Enabled
  - policy_class: User
