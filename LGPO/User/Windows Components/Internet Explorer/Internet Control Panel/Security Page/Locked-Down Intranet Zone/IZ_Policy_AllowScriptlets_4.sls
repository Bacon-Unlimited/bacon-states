# SUPPORTED_IE7
#
# This policy setting allows you to manage whether the user can run scriptlets.
# 
# If you enable this policy setting, the user can run scriptlets.
# 
# If you disable this policy setting, the user cannot run scriptlets.
# 
# If you do not configure this policy setting, the user can enable or disable scriptlets.
Allow scriptlets:
  lgpo.set:
  - name: IZ_Policy_AllowScriptlets_4
  - setting:
      IZ_Partname1209: enum-placeholder
  - policy_class: User
