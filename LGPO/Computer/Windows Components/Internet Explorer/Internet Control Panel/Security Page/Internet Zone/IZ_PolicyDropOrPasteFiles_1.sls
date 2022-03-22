# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether users can drag files or copy and paste files from a source within the zone.
# 
# If you enable this policy setting, users can drag files or copy and paste files from this zone automatically. If you select Prompt in the drop-down box, users are queried to choose whether to drag or copy files from this zone.
# 
# If you disable this policy setting, users are prevented from dragging files or copying and pasting files from this zone.
# 
# If you do not configure this policy setting, users can drag files or copy and paste files from this zone automatically.
Allow drag and drop or copy and paste files:
  lgpo.set:
  - name: IZ_PolicyDropOrPasteFiles_1
  - setting:
      IZ_Partname1802: enum-placeholder
  - policy_class: Machine
