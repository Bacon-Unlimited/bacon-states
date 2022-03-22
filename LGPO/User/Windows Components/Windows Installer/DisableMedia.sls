# windows:SUPPORTED_Win2k
#
# This policy setting prevents users from installing any programs from removable media.
# 
# If you enable this policy setting, if a user tries to install a program from removable media, such as CD-ROMs, floppy disks, and DVDs, a message appears stating that the feature cannot be found.
# 
# This policy setting applies even when the installation is running in the user's security context.
# 
# If you disable or do not configure this policy setting, users can install from removable media when the installation is running in their own security context, but only system administrators can use removable media when an installation is running with elevated system privileges, such as installations offered on the desktop or in Add or Remove Programs.
# 
# Also, see the "Enable user to use media source while elevated" and "Hide the 'Add a program from CD-ROM or floppy disk' option" policy settings.
Prevent removable media source for any installation:
  lgpo.set:
  - name: DisableMedia
  - setting: Enabled
  - policy_class: User
