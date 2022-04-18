# SUPPORTED_IE6SP2
#
# This policy setting defines whether a reference to an object is accessible when the user navigates within the same domain or to a new domain.
# 
# If you enable this policy setting, object reference is no longer accessible when navigating within or across domains for all processes.
# 
# If you disable or do not configure this policy setting, object reference is retained when navigating within or across domains in the Restricted Zone sites.
All Processes:
  lgpo.set:
  - name: IESF_PolicyAllProcesses_7
  - setting: Enabled
  - policy_class: Machine
