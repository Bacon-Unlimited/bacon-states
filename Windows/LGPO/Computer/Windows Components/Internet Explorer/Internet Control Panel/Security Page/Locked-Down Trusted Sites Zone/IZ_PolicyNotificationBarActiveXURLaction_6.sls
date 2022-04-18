# SUPPORTED_IE6SP2
#
# This policy setting manages whether users will be automatically prompted for ActiveX control installations.
# 
# If you enable this policy setting, users will receive a prompt when a site instantiates an ActiveX control they do not have installed.
# 
# If you disable this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.
# 
# If you do not configure this policy setting, ActiveX control installations will be blocked using the Notification bar. Users can click on the Notification bar to allow the ActiveX control prompt.
Automatic prompting for ActiveX controls:
  lgpo.set:
  - name: IZ_PolicyNotificationBarActiveXURLaction_6
  - setting:
      IZ_Partname2201: enum-placeholder
  - policy_class: Machine
