# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from viewing or installing published programs.
# 
# This setting removes the "Add programs from your network" section from the Add New Programs page. The "Add programs from your network" section lists published programs and provides an easy way to install them.
# 
# Published programs are those programs that the system administrator has explicitly made available to the user with a tool such as Windows Installer. Typically, system administrators publish programs to notify users that the programs are available, to recommend their use, or to enable users to install them without having to search for installation files.
# 
# If you enable this setting, users cannot tell which programs have been published by the system administrator, and they cannot use Add or Remove Programs to install published programs. However, they can still install programs by using other methods, and they can view and install assigned (partially installed) programs that are offered on the desktop or on the Start menu.
# 
# If you disable this setting or do not configure it, "Add programs from your network" is available to all users.
# 
# Note: If the "Hide Add New Programs page" setting is enabled, this setting is ignored.
Hide the "Add programs from your network" option:
  lgpo.set:
  - name: NoAddFromNetwork
  - setting: Enabled
  - policy_class: User
