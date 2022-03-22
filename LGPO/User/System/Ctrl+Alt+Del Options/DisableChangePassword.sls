# windows:SUPPORTED_Win2k
#
# This policy setting prevents users from changing their Windows password on demand.
# 
# If you enable this policy setting,  the 'Change Password' button on the Windows Security dialog box will not appear when you press Ctrl+Alt+Del.
# 
# However, users are still able to change their password when prompted by the system. The system prompts users for a new password when an administrator requires a new password or their password is expiring.
Remove Change Password:
  lgpo.set:
  - name: DisableChangePassword
  - setting: Enabled
  - policy_class: User
