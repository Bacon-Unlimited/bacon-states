# windows:SUPPORTED_Win2k
#
# This policy setting allows users to install programs from removable media during privileged installations.
# 
# If you enable this policy setting, all users are permitted to install programs from removable media, such as floppy disks and CD-ROMs, even when the installation program is running with elevated system privileges.
# 
# This policy setting does not affect installations that run in the user's security context. By default, users can install from removable media when the installation runs in their own security context.
# 
# If you disable or do not configure this policy setting, by default, users can install programs from removable media only when the installation runs in the user's security context. During privileged installations, such as those offered on the desktop or displayed in Add or Remove Programs, only system administrators can install from removable media.
# 
# Also, see the "Prevent removable media source for any install" policy setting.
Allow users to use media source while elevated:
  lgpo.set:
  - name: AllowLockdownMedia
  - setting: Enabled
  - policy_class: Machine
