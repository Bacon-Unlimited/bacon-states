# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether the Notification bar is displayed for processes other than the Internet Explorer processes when file or code installs are restricted. By default, the Notification bar is not displayed for any process when file or code installs are restricted (except for the Internet Explorer Processes, for which the Notification bar is displayed by default).
# 
#  If you enable this policy setting, the Notification bar will be displayed for all processes.
# 
# If you disable or do not configure this policy setting, the Notification bar will not be displayed for all processes other than Internet Explorer or those listed in the Process List.
All Processes:
  lgpo.set:
  - name: IESF_PolicyAllProcesses_10
  - setting: Enabled
  - policy_class: Machine
