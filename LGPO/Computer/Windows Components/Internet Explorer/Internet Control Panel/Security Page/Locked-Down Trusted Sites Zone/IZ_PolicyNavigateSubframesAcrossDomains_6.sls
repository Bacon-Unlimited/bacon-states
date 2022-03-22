# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage the opening of windows and frames and access of applications across different domains.
# 
# If you enable this policy setting, users can open windows and frames from othe domains and access applications from other domains. If you select Prompt in the drop-down box, users are queried whether to allow windows and frames to access applications from other domains.
# 
# If you disable this policy setting, users cannot open windows and frames to access applications from different domains.
# 
# If you do not configure this policy setting, users can open windows and frames from othe domains and access applications from other domains.
Navigate windows and frames across different domains:
  lgpo.set:
  - name: IZ_PolicyNavigateSubframesAcrossDomains_6
  - setting:
      IZ_Partname1607: enum-placeholder
  - policy_class: Machine
