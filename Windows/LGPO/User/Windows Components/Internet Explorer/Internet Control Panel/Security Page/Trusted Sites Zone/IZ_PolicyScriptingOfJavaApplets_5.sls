# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether applets are exposed to scripts within the zone.
# 
# If you enable this policy setting, scripts can access applets automatically without user intervention.
# 
# If you select Prompt in the drop-down box, users are queried to choose whether to allow scripts to access applets.
# 
# If you disable this policy setting, scripts are prevented from accessing applets.
# 
# If you do not configure this policy setting, scripts can access applets automatically without user intervention.
Scripting of Java applets:
  lgpo.set:
  - name: IZ_PolicyScriptingOfJavaApplets_5
  - setting:
      IZ_Partname1402: enum-placeholder
  - policy_class: User
