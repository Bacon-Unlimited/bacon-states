# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether users may download unsigned ActiveX controls from the zone. Such code is potentially harmful, especially when coming from an untrusted zone.
# 
# If you enable this policy setting, users can run unsigned controls without user intervention. If you select Prompt in the drop-down box, users are queried to choose whether to allow the unsigned control to run.
# 
# If you disable this policy setting, users cannot run unsigned controls.
# 
# If you do not configure this policy setting, users cannot run unsigned controls.
Download unsigned ActiveX controls:
  lgpo.set:
  - name: IZ_PolicyDownloadUnsignedActiveX_4
  - setting:
      IZ_Partname1004: enum-placeholder
  - policy_class: User
