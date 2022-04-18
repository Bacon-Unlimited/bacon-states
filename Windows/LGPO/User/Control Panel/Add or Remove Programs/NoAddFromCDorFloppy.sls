# windows:SUPPORTED_WindowsPreVista
#
# Removes the "Add a program from CD-ROM or floppy disk" section from the Add New Programs page. This prevents users from using Add or Remove Programs to install programs from removable media.
# 
# If you disable this setting or do not configure it, the "Add a program from CD-ROM or floppy disk" option is available to all users.
# 
# This setting does not prevent users from using other tools and methods to add or remove program components.
# 
# Note: If the "Hide Add New Programs page" setting is enabled, this setting is ignored. Also, if the "Prevent removable media source for any install" setting (located in User Configuration\Administrative Templates\Windows Components\Windows Installer) is enabled, users cannot add programs from removable media, regardless of this setting.
Hide the "Add a program from CD-ROM or floppy disk" option:
  lgpo.set:
  - name: NoAddFromCDorFloppy
  - setting: Enabled
  - policy_class: User
