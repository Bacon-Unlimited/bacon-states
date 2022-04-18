# SUPPORTED_IE6SP2
#
# This policy setting enables applications hosting the Web Browser Control to block automatic prompting of ActiveX control installation.
# 
# If you enable this policy setting, the Web Browser Control will block automatic prompting of ActiveX control installation for all processes.
# 
# If you disable or do not configure this policy setting, the Web Browser Control will not block automatic prompting of ActiveX control installation for all processes.
All Processes:
  lgpo.set:
  - name: IESF_PolicyAllProcesses_11
  - setting: Enabled
  - policy_class: Machine
