# SUPPORTED_IE6SP2
#
# This policy setting enables applications hosting the Web Browser Control to block automatic prompting of file downloads that are not user initiated.
# 
# If you enable this policy setting, the Web Browser Control will block automatic prompting of file downloads that are not user initiated for all processes.
# 
# If you disable this policy setting, the Web Browser Control will not block automatic prompting of file downloads that are not user initiated for all processes.
All Processes:
  lgpo.set:
  - name: IESF_PolicyAllProcesses_12
  - setting: Enabled
  - policy_class: Machine
