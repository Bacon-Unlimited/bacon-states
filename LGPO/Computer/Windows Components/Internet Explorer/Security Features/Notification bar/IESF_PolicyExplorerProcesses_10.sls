# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether the Notification bar is displayed for Internet Explorer processes when file or code installs are restricted. By default, the Notification bar is displayed for Internet Explorer processes.
# 
# If you enable this policy setting, the Notification bar will be displayed for Internet Explorer Processes.
# 
# If you disable this policy setting, the Notification bar will not be displayed for Internet Explorer processes.
# 
# If you do not configure this policy setting, the Notification bar will be displayed for Internet Explorer Processes.
Internet Explorer Processes:
  lgpo.set:
  - name: IESF_PolicyExplorerProcesses_10
  - setting: Enabled
  - policy_class: Machine
