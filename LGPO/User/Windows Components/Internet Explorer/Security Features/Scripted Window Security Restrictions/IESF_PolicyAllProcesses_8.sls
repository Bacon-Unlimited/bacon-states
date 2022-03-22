# SUPPORTED_IE6SP2
#
# Internet Explorer allows scripts to programmatically open, resize, and reposition windows of various types. The Window Restrictions security feature restricts popup windows and prohibits scripts from displaying windows in which the title and status bars are not visible to the user or obfuscate other Windows' title and status bars.
# 
# If you enable this policy setting, scripted windows are restricted for all processes.
# 
# If you disable or do not configure this policy setting, scripted windows are not restricted.
All Processes:
  lgpo.set:
  - name: IESF_PolicyAllProcesses_8
  - setting: Enabled
  - policy_class: User