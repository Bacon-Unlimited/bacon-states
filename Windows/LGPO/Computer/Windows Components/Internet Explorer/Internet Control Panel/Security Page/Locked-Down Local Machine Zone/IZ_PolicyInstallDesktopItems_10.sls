# SUPPORTED_IE6SP2_IE8
#
# This policy setting allows you to manage whether users can install Active Desktop items from this zone. The settings for this option are: If you enable this policy setting, users can install desktop items from this zone automatically.
# 
# If you select Prompt in the drop-down box, users are queried to choose whether to install desktop items from this zone.
# 
# If you disable this policy setting, users are prevented from installing desktop items from this zone.
# 
# If you do not configure this policy setting, users can install desktop items from this zone automatically.
Allow installation of desktop items:
  lgpo.set:
  - name: IZ_PolicyInstallDesktopItems_10
  - setting:
      IZ_Partname1800: enum-placeholder
  - policy_class: Machine
