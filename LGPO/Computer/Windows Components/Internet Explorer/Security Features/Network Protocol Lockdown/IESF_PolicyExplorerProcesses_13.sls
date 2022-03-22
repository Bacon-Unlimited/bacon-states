# SUPPORTED_IE6SP2
#
# File Explorer and Internet Explorer may be configured to prevent active content obtained through restricted protocols from running in an unsafe manner. This policy setting controls whether restricting content obtained through restricted protocols is prevented or allowed.
# 
# If you enable this policy setting, restricting content obtained through restricted protocols is allowed for File Explorer and Internet Explorer processes. For example, you can restrict active content from pages served over the http and https protocols by adding the value names http and https.
# 
# If you disable this policy setting, restricting content obtained through restricted protocols is prevented for File Explorer and Internet Explorer processes.
# 
# If you do not configure this policy setting, the policy setting is ignored.
Internet Explorer Processes:
  lgpo.set:
  - name: IESF_PolicyExplorerProcesses_13
  - setting: Enabled
  - policy_class: Machine
