# SUPPORTED_IE6SP2
#
# Internet Explorer contains dynamic binary behaviors: components that encapsulate specific functionality for the HTML elements to which they are attached. This policy setting controls whether the Binary Behavior Security Restriction setting is prevented or allowed.
# 
# If you enable this policy setting, binary behaviors are prevented for the File Explorer and Internet Explorer processes.
# 
# If you disable this policy setting, binary behaviors are allowed for the File Explorer and Internet Explorer processes.
# 
# If you do not configure this policy setting, binary behaviors are prevented for the File Explorer and Internet Explorer processes.
Internet Explorer Processes:
  lgpo.set:
  - name: IESF_PolicyExplorerProcesses_2
  - setting: Enabled
  - policy_class: User
