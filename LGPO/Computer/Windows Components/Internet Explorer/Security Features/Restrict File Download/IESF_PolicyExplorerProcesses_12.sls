# SUPPORTED_IE6SP2
#
# This policy setting enables blocking of file download prompts that are not user initiated.
# 
# If you enable this policy setting, file download prompts that are not user initiated will be blocked for Internet Explorer processes.
# 
# If you disable this policy setting, prompting will occur for file downloads that are not user initiated for Internet Explorer processes.
# 
# If you do not configure this policy setting, the user's preference determines whether to prompt for file downloads that are not user initiated for Internet Explorer processes.
Internet Explorer Processes:
  lgpo.set:
  - name: IESF_PolicyExplorerProcesses_12
  - setting: Enabled
  - policy_class: Machine
