# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to control a user's ability to invoke a computer policy refresh.
# 
# If you enable this policy setting, users are not able to invoke a refresh of computer policy. Computer policy will still be applied at startup or when an official policy refresh occurs.
# 
# If you disable or do not configure this policy setting, the default behavior applies. By default, computer policy is applied when the computer starts up. It also applies at a specified refresh interval or when manually invoked by the user.
# 
# Note: This policy setting applies only to non-administrators. Administrators can still invoke a refresh of computer policy at any time, no matter how this policy setting is configured.
# 
# Also, see the "Set Group Policy refresh interval for computers" policy setting to change the policy refresh interval.
# 
# Note: If you make changes to this policy setting, you must restart your computer for it to take effect.
Remove users' ability to invoke machine policy refresh:
  lgpo.set:
  - name: DisableUsersFromMachGP
  - setting: Enabled
  - policy_class: Machine
