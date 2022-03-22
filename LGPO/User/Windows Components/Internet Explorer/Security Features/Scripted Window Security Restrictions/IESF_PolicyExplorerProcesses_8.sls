# SUPPORTED_IE6SP2
#
# Internet Explorer allows scripts to programmatically open, resize, and reposition windows of various types. The Window Restrictions security feature restricts popup windows and prohibits scripts from displaying windows in which the title and status bars are not visible to the user or obfuscate other Windows' title and status bars.
# 
# If you enable this policy setting, popup windows and other restrictions apply for File Explorer and Internet Explorer processes.
# 
# If you disable this policy setting, scripts can continue to create popup windows and windows that obfuscate other windows.
# 
# If you do not configure this policy setting, popup windows and other restrictions apply for File Explorer and Internet Explorer processes.
Internet Explorer Processes:
  lgpo.set:
  - name: IESF_PolicyExplorerProcesses_8
  - setting: Enabled
  - policy_class: User
