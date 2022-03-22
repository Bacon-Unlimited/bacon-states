# windows:SUPPORTED_Win2k
#
# This policy setting prevents Group Policy from being updated while the computer is in use. This policy setting applies to Group Policy for computers, users, and domain controllers.
# 
# If you enable this policy setting, the system waits until the current user logs off the system before updating the computer and user settings.
# 
# If you disable or do not configure this policy setting, updates can be applied while users are working. The frequency of updates is determined by the "Set Group Policy refresh interval for computers" and "Set Group Policy refresh interval for users" policy settings.
# 
# Note: If you make changes to this policy setting, you must restart your computer for it to take effect.
Turn off background refresh of Group Policy:
  lgpo.set:
  - name: DisableBackgroundPolicy
  - setting: Enabled
  - policy_class: Machine
