# windows:SUPPORTED_WindowsVista
#
# This setting prevents users from accessing "Programs and Features" to view, uninstall, change, or repair programs that are currently installed on the computer.
# 
# If this setting is disabled or not configured, "Programs and Features" will be available to all users.
# 
# This setting does not prevent users from using other tools and methods to view or uninstall programs.  It also does not prevent users from linking to related Programs Control Panel Features including Windows Features, Get Programs, or Windows Marketplace.
Hide "Programs and Features" page:
  lgpo.set:
  - name: NoProgramsAndFeatures
  - setting: Enabled
  - policy_class: User
