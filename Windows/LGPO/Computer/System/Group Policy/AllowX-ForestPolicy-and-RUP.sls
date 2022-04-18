# windows:SUPPORTED_WindowsNET
#
# This policy setting allows user-based policy processing, roaming user profiles, and user object logon scripts for interactive logons across forests.
# 
# This policy setting affects all user accounts that interactively log on to a computer in a different forest when a trust across forests or a two-way forest trust exists.
# 
# If you do not configure this policy setting:
# -  No user-based policy settings are applied from the user's forest.
# -  Users do not receive their roaming profiles; they receive a local profile on the computer from the local forest. A warning message appears to the user, and an event log message (1529) is posted.
# -  Loopback Group Policy processing is applied, using the Group Policy Objects (GPOs) that are scoped to the computer.
# - An event log message (1109) is posted, stating that loopback was invoked in Replace mode.
# 
# If you enable this policy setting, the behavior is exactly the same as in Windows 2000: user policy is applied, and a roaming user profile is allowed from the trusted forest.
# 
# If you disable this policy setting, the behavior is the same as if it is not configured.
Allow cross-forest user policy and roaming user profiles:
  lgpo.set:
  - name: AllowX-ForestPolicy-and-RUP
  - setting: Enabled
  - policy_class: Machine
