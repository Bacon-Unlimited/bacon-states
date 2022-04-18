# SUPPORTED_IE6SP2
#
# This policy setting enables blocking of ActiveX control installation prompts for Internet Explorer processes.
# 
# If you enable this policy setting, prompting for ActiveX control installations will be blocked for Internet Explorer processes.
# 
# If you disable this policy setting, prompting for ActiveX control installations will not be blocked for Internet Explorer processes.
# 
# If you do not configure this policy setting, the user's preference will be used to determine whether to block ActiveX control installations for Internet Explorer processes.
Internet Explorer Processes:
  lgpo.set:
  - name: IESF_PolicyExplorerProcesses_11
  - setting: Enabled
  - policy_class: Machine
