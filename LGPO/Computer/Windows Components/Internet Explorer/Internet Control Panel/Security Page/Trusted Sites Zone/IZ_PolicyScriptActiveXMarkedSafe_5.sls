# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether an ActiveX control marked safe for scripting can interact with a script.
# 
# If you enable this policy setting, script interaction can occur automatically without user intervention.
# 
# If you select Prompt in the drop-down box, users are queried to choose whether to allow script interaction.
# 
# If you disable this policy setting, script interaction is prevented from occurring.
# 
# If you do not configure this policy setting, script interaction can occur automatically without user intervention.
Script ActiveX controls marked safe for scripting:
  lgpo.set:
  - name: IZ_PolicyScriptActiveXMarkedSafe_5
  - setting:
      IZ_Partname1405: enum-placeholder
  - policy_class: Machine
