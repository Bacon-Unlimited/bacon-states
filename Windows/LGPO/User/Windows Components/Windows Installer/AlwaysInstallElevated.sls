# windows:SUPPORTED_Win2k
#
# This policy setting directs Windows Installer to use elevated permissions when it installs any program on the system.
# 
# If you enable this policy setting, privileges are extended to all programs. These privileges are usually reserved for programs that have been assigned to the user (offered on the desktop), assigned to the computer (installed automatically), or made available in Add or Remove Programs in Control Panel. This profile setting lets users install programs that require access to directories that the user might not have permission to view or change, including directories on highly restricted computers.
# 
# If you disable or do not configure this policy setting, the system applies the current user's permissions when it installs programs that a system administrator does not distribute or offer.
# 
# Note: This policy setting appears both in the Computer Configuration and User Configuration folders. To make this policy setting effective, you must enable it in both folders.
# 
# Caution: Skilled users can take advantage of the permissions this policy setting grants to change their privileges and gain permanent access to restricted files and folders. Note that the User Configuration version of this policy setting is not guaranteed to be secure.
Always install with elevated privileges:
  lgpo.set:
  - name: AlwaysInstallElevated
  - setting: Enabled
  - policy_class: User
