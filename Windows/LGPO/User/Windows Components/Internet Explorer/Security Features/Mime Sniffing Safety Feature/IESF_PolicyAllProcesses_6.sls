# SUPPORTED_IE6SP2
#
# This policy setting determines whether Internet Explorer MIME sniffing will prevent promotion of a file of one type to a more dangerous file type.
# 
# If you enable this policy setting, the Mime Sniffing Safety Feature is enabled for all processes.
# 
# If you disable or do not configure this policy setting, the Mime Sniffing Safety Feature is disabled for all processes.
All Processes:
  lgpo.set:
  - name: IESF_PolicyAllProcesses_6
  - setting: Enabled
  - policy_class: User
