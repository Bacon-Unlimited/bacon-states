# windows:SUPPORTED_WindowsVistaOnly
#
# This setting prevents users from access the "Get new programs from Windows Marketplace" task from the Programs Control Panel in Category View, Programs and Features in Classic View, and Get Programs.
# 
# Windows Marketplace allows users to purchase and/or download various programs to their computer for installation.
# 
# Enabling this feature does not prevent users from navigating to Windows Marketplace using other methods. 
# 
# If this feature is disabled or is not configured, the "Get new programs from Windows Marketplace" task link will be available to all users.
# 
# Note:  If the "Hide Programs control Panel" setting is enabled, this setting is ignored.
Hide "Windows Marketplace":
  lgpo.set:
  - name: NoWindowsMarketplace
  - setting: Enabled
  - policy_class: User
