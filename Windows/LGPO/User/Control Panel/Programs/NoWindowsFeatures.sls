# windows:SUPPORTED_WindowsVista
#
# This setting prevents users from accessing the "Turn Windows features on or off" task from the Programs Control Panel in Category View, Programs and Features in Classic View, and Get Programs.  As a result, users cannot view, enable, or disable various Windows features and services.
# 
# If this setting is disabled or is not configured, the "Turn Windows features on or off" task will be available to all users.
# 
# This setting does not prevent users from using other tools and methods to configure services or enable or disable program components.
Hide "Windows Features":
  lgpo.set:
  - name: NoWindowsFeatures
  - setting: Enabled
  - policy_class: User
