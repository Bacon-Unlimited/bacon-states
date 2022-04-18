# SUPPORTED_IE6SP2
#
# The MK Protocol Security Restriction policy setting reduces attack surface area by preventing the MK protocol. Resources hosted on the MK protocol will fail.
# 
# If you enable this policy setting, the MK Protocol is prevented for File Explorer and Internet Explorer, and resources hosted on the MK protocol will fail.
# 
# If you disable this policy setting, applications can use the MK protocol API. Resources hosted on the MK protocol will work for the File Explorer and Internet Explorer processes.
# 
# If you do not configure this policy setting, the MK Protocol is prevented for File Explorer and Internet Explorer, and resources hosted on the MK protocol will fail.
Internet Explorer Processes:
  lgpo.set:
  - name: IESF_PolicyExplorerProcesses_3
  - setting: Enabled
  - policy_class: User
