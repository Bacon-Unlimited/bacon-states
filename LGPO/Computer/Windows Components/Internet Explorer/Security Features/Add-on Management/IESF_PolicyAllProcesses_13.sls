# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether processes respect add-on management user preferences (as reflected by Add-on Manager) or policy settings.  By default, any process other than the Internet Explorer processes or those listed in the 'Process List' policy setting ignore add-on management user preferences and policy settings.
# 
# If you enable this policy setting, all processes will respect add-on management user preferences and policy settings.
# 
# If you disable or do not configure this policy setting, all processes will not respect add-on management user preferences or policy settings.
All Processes:
  lgpo.set:
  - name: IESF_PolicyAllProcesses_13
  - setting: Enabled
  - policy_class: Machine
