# SUPPORTED_IE6SP2
#
# The MK Protocol Security Restriction policy setting reduces attack surface area by preventing the MK protocol. Resources hosted on the MK protocol will fail.
# 
# If you enable this policy setting, the MK Protocol is disabled for all processes. Any use of the MK Protocol is blocked.
# 
# If you disable or do not configure this policy setting, the MK Protocol is enabled.
All Processes:
  lgpo.set:
  - name: IESF_PolicyAllProcesses_3
  - setting: Enabled
  - policy_class: Machine
