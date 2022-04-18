# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether ActiveX controls and plug-ins can be run on pages from the specified zone.
# 
# If you enable this policy setting, controls and plug-ins can run without user intervention.
# 
# If you selected Prompt in the drop-down box, users are asked to choose whether to allow the controls or plug-in to run.
# 
# If you disable this policy setting, controls and plug-ins are prevented from running.
# 
# If you do not configure this policy setting, controls and plug-ins are prevented from running.
Run ActiveX controls and plugins:
  lgpo.set:
  - name: IZ_PolicyRunActiveXControls_4
  - setting:
      IZ_Partname1200: enum-placeholder
  - policy_class: Machine
