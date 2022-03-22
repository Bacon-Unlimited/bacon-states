# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from using Add or Remove Programs.
# 
# This setting removes Add or Remove Programs from Control Panel and removes the Add or Remove Programs item from menus.
# 
# Add or Remove Programs lets users install, uninstall, repair, add, and remove features and components of Windows 2000 Professional and a wide variety of Windows programs. Programs published or assigned to the user appear in Add or Remove Programs.
# 
# If you disable this setting or do not configure it, Add or Remove Programs is available to all users.
# 
# When enabled, this setting takes precedence over the other settings in this folder.
# 
# This setting does not prevent users from using other tools and methods to install or uninstall programs.
Remove Add or Remove Programs:
  lgpo.set:
  - name: NoAddRemovePrograms
  - setting: Enabled
  - policy_class: User
