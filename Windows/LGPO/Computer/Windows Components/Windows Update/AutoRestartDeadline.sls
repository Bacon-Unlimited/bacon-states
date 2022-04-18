# WU_SUPPORTED_Server2016_Through_Server2022_Or_Windows10
#
# Specify the deadline before the PC will automatically restart to apply updates. The deadline can be set 2 to 14 days past the default restart date.
# 
# The restart may happen inside active hours.
# 
# If you disable or do not configure this policy, the PC will restart according to the default schedule.
# 
# Enabling either of the following two policies will override the above policy:
#     1. No auto-restart with logged on users for scheduled automatic updates installations.
#     2. Always automatically restart at scheduled time.
#       
Specify deadline before auto-restart for update installation:
  lgpo.set:
  - name: AutoRestartDeadline
  - setting:
      AutoRestartDeadline: enum-placeholder
      AutoRestartDeadlineForFeatureUpdates: enum-placeholder
  - policy_class: Machine
