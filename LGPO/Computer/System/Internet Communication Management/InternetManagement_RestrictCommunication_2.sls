# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting specifies whether Windows can access the Internet to accomplish tasks that require Internet resources.
# 
# If you enable this setting, all of the the policy settings listed in the "Internet Communication settings" section are set such that their respective features cannot access the Internet.
# 
# If you disable this policy setting, all of the the policy settings listed in the "Internet Communication settings" section are set such that their respective features can access the Internet.
# 
# If you do not configure this policy setting, all of the the policy settings in the "Internet Communication settings" section are set to not configured.
Restrict Internet communication:
  lgpo.set:
  - name: InternetManagement_RestrictCommunication_2
  - setting: Enabled
  - policy_class: Machine
