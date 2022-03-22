# windows:SUPPORTED_WindowsPreVista
#
# Removes the "Add programs from Microsoft" section from the Add New Programs page. This setting prevents users from using Add or Remove Programs to connect to Windows Update.
# 
# If you disable this setting or do not configure it, "Add programs from Microsoft" is available to all users.
# 
# This setting does not prevent users from using other tools and methods to connect to Windows Update.
# 
# Note: If the "Hide Add New Programs page" setting is enabled, this setting is ignored.
Hide the "Add programs from Microsoft" option:
  lgpo.set:
  - name: NoAddFromInternet
  - setting: Enabled
  - policy_class: User
