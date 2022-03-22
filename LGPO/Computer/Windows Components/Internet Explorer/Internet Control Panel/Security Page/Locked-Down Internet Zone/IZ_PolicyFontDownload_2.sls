# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether pages of the zone may download HTML fonts.
# 
# If you enable this policy setting, HTML fonts can be downloaded automatically. If you enable this policy setting and Prompt is selected in the drop-down box, users are queried whether to allow HTML fonts to download.
# 
# If you disable this policy setting, HTML fonts are prevented from downloading.
# 
# If you do not configure this policy setting, HTML fonts can be downloaded automatically.
Allow font downloads:
  lgpo.set:
  - name: IZ_PolicyFontDownload_2
  - setting:
      IZ_Partname1604: enum-placeholder
  - policy_class: Machine
