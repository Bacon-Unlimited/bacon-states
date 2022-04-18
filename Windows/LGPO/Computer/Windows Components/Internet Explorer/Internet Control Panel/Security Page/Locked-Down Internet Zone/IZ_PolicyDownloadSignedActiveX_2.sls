# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether users may download signed ActiveX controls from a page in the zone.
# 
# If you enable this policy, users can download signed controls without user intervention. If you select Prompt in the drop-down box, users are queried whether to download controls signed by publishers who aren't trusted. Code signed by trusted publishers is silently downloaded.
# 
# If you disable the policy setting, signed controls cannot be downloaded.
# 
# If you do not configure this policy setting, users are queried whether to download controls signed by publishers who aren't trusted.  Code signed by trusted publishers is silently downloaded.
Download signed ActiveX controls:
  lgpo.set:
  - name: IZ_PolicyDownloadSignedActiveX_2
  - setting:
      IZ_Partname1001: enum-placeholder
  - policy_class: Machine
