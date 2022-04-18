# SUPPORTED_IE7
#
# This policy setting allows you to manage whether script is allowed to update the status bar within the zone.
# 
# If you enable this policy setting, script is allowed to update the status bar.
# 
# If you disable or do not configure this policy setting, script is not allowed to update the status bar.
Allow updates to status bar via script:
  lgpo.set:
  - name: IZ_Policy_ScriptStatusBar_6
  - setting:
      IZ_Partname2103: enum-placeholder
  - policy_class: Machine
