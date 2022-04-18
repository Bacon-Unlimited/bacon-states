# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.
# 
# If you enable this policy setting, users can open additional windows and frames from other domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow additional windows and frames to access applications from other domains.
# 
# If you disable this policy setting, users cannot open other windows and frames from other domains or access applications from different domains.
# 
# If you do not configure this policy setting, users cannot open other windows and frames from different domains or access applications from different domains.
Navigate windows and frames across different domains:
  lgpo.set:
  - name: IZ_PolicyNavigateSubframesAcrossDomains_7
  - setting:
      IZ_Partname1607: enum-placeholder
  - policy_class: Machine
