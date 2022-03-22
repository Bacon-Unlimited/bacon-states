# windows:SUPPORTED_Win2kSP3_Or_XPSP1
#
# Specifies that to complete a scheduled installation, Automatic Updates will wait for the computer to be restarted by any user who is logged on, instead of causing the computer to restart automatically.
# 
# If the status is set to Enabled, Automatic Updates will not restart a computer automatically during a scheduled installation if a user is logged in to the computer. Instead, Automatic Updates will notify the user to restart the computer.
# 
# Be aware that the computer needs to be restarted for the updates to take effect.
# 
# If the status is set to Disabled or Not Configured, Automatic Updates will notify the user that the computer will automatically restart in 5 minutes to complete the installation.
# 
# Note: This policy applies only when Automatic Updates is configured to perform scheduled installations of updates. If the "Configure Automatic Updates" policy is disabled, this policy has no effect.
No auto-restart with logged on users for scheduled automatic updates installations:
  lgpo.set:
  - name: NoAutoRebootWithLoggedOnUsers_Title
  - setting: Enabled
  - policy_class: Machine
