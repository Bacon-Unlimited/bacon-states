# SUPPORTED_IE6SP2
#
# This policy setting determines whether Internet Explorer MIME sniffing will prevent promotion of a file of one type to a more dangerous file type.
# 
# If you enable this policy setting, MIME sniffing will never promote a file of one type to a more dangerous file type.
# 
# If you disable this policy setting, Internet Explorer processes will allow a MIME sniff promoting a file of one type to a more dangerous file type.
# 
# If you do not configure this policy setting, MIME sniffing will never promote a file of one type to a more dangerous file type.
Internet Explorer Processes:
  lgpo.set:
  - name: IESF_PolicyExplorerProcesses_6
  - setting: Enabled
  - policy_class: Machine
