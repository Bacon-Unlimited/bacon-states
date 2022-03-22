# SUPPORTED_IE6SP2
#
# This policy setting defines whether a reference to an object is accessible when the user navigates within the same domain or to a new domain.
# 
# If you enable this policy setting, an object reference is no longer accessible when navigating within or across domains for Internet Explorer processes.
# 
# If you disable this policy setting, an object reference is retained when navigating within or across domains for Internet Explorer processes.
# 
# If you do not configure this policy setting, an object reference is no longer accessible when navigating within or across domains for Internet Explorer processes.
Internet Explorer Processes:
  lgpo.set:
  - name: IESF_PolicyExplorerProcesses_7
  - setting: Enabled
  - policy_class: Machine
