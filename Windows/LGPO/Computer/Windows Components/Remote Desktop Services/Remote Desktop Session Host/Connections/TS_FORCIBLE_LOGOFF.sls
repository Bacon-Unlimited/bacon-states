# TS_SUPPORTED_WindowsXP_Win2K3_only
#
# This policy setting determines whether an administrator attempting to connect remotely to the console of a server can log off an administrator currently logged on to the console.
# 
# This policy is useful when the currently connected administrator does not want to be logged off by another administrator. If the connected administrator is logged off, any data not previously saved is lost.
# 
# If you enable this policy setting, logging off the connected administrator is not allowed.
# 
# If you disable or do not configure this policy setting, logging off the connected administrator is allowed.
# 
# Note: The console session is also known as Session 0. Console access can be obtained by using the /console switch from Remote Desktop Connection in the computer field name or from the command line.
Deny logoff of an administrator logged in to the console session:
  lgpo.set:
  - name: TS_FORCIBLE_LOGOFF
  - setting: Enabled
  - policy_class: Machine
