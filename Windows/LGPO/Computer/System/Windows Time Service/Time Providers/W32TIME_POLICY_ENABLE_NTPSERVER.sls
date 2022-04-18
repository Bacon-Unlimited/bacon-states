# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to specify whether the Windows NTP Server is enabled.
# 
# If you enable this policy setting for the Windows NTP Server, your computer can service NTP requests from other computers.
# 
# 
# If you disable or do not configure this policy setting, your computer cannot service NTP requests from other computers.
# 
# 
Enable Windows NTP Server:
  lgpo.set:
  - name: W32TIME_POLICY_ENABLE_NTPSERVER
  - setting: Enabled
  - policy_class: Machine
