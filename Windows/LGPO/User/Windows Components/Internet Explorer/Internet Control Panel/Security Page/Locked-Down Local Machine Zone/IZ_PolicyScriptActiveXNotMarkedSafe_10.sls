# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage ActiveX controls not marked as safe.
# 
# If you enable this policy setting, ActiveX controls are run, loaded with parameters, and scripted without setting object safety for untrusted data or scripts. This setting is not recommended, except for secure and administered zones. This setting causes both unsafe and safe controls to be initialized and scripted, ignoring the Script ActiveX controls marked safe for scripting option.
# 
# If you enable this policy setting and select Prompt in the drop-down box, users are queried whether to allow the control to be loaded with parameters or scripted.
# 
# If you disable this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.
# 
# If you do not configure this policy setting, ActiveX controls that cannot be made safe are not loaded with parameters or scripted.
Initialize and script ActiveX controls not marked as safe:
  lgpo.set:
  - name: IZ_PolicyScriptActiveXNotMarkedSafe_10
  - setting:
      IZ_Partname1201: enum-placeholder
  - policy_class: User
