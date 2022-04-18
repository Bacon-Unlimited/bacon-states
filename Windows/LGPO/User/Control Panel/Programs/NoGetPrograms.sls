# windows:SUPPORTED_WindowsVista
#
# Prevents users from viewing or installing published programs from the network.  
# 
# This setting prevents users from accessing the "Get Programs" page from the Programs Control Panel in Category View, Programs and Features in Classic View and the "Install a program from the netowrk" task.  The "Get Programs" page lists published programs and provides an easy way to install them.
# 
# Published programs are those programs that the system administrator has explicitly made available to the user with a tool such as Windows Installer.  Typically, system administrators publish programs to notify users of their availability, to recommend their use, or to enable users to install them without having to search for installation files.
# 
# If this setting is enabled, users cannot view the programs that have been published by the system administrator, and they cannot use the "Get Programs" page to install published programs.  Enabling this feature does not prevent users from installing programs by using other methods.  Users will still be able to view and installed assigned (partially installed) programs that are offered on the desktop or on the Start menu.
# 
# If this setting is disabled or is not configured, the "Install a program from the network" task to the "Get Programs" page will be available to all users.
# 
# Note:  If the "Hide Programs Control Panel" setting is enabled, this setting is ignored.
Hide "Get Programs" page:
  lgpo.set:
  - name: NoGetPrograms
  - setting: Enabled
  - policy_class: User
