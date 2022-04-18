# SUPPORTED_IE9
#
# This policy setting allows you to manage where tabs are displayed.
# 
# If you enable this policy setting, tabs are displayed on a separate row.
# 
# If you disable this policy setting, tabs are not displayed on a separate row.
# 
# If you do not configure this policy setting, the user can change where tabs are displayed.
Display tabs on a separate row:
  lgpo.set:
  - name: MoveTabBand
  - setting: Enabled
  - policy_class: User
