# windows:SUPPORTED_WindowsPreVista
#
# This policy setting hides the file scan progress window. This window provides status information to sophisticated users, but it might confuse novices.
# 
# If you enable this policy setting, the file scan window does not appear during file scanning.
# 
# If you disable or do not configure this policy setting, the file scan progress window appears.
Hide the file scan progress window:
  lgpo.set:
  - name: WFPShowProgress
  - setting: Enabled
  - policy_class: Machine
