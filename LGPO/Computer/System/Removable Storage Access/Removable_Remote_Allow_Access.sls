# windows:SUPPORTED_WindowsVista
#
# This policy setting grants normal users direct access to removable storage devices in remote sessions.
# 
# If you enable this policy setting, remote users can open direct handles to removable storage devices in remote sessions.
# 
# If you disable or do not configure this policy setting, remote users cannot open direct handles to removable storage devices in remote sessions.
'All Removable Storage: Allow direct access in remote sessions':
  lgpo.set:
  - name: Removable_Remote_Allow_Access
  - setting: Enabled
  - policy_class: Machine
