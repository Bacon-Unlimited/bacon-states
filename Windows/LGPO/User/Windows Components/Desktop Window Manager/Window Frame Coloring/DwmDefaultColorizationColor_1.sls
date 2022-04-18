# windows:SUPPORTED_WindowsVista
#
# This policy setting controls the default color for window frames when the user does not specify a color. 
# 
# If you enable this policy setting and specify a default color, this color is used in glass window frames, if the user does not specify a color. 
# 
# If you disable or do not configure this policy setting, the default internal color is used, if the user does not specify a color. 
# 
# Note: This policy setting can be used in conjunction with the "Prevent color changes of window frames" setting, to enforce a specific color for window frames that cannot be changed by users.
Specify a default color:
  lgpo.set:
  - name: DwmDefaultColorizationColor_1
  - setting:
      DwmDefaultColorizationColorAlpha: decimal-placeholder
      DwmDefaultColorizationColorBlue: decimal-placeholder
      DwmDefaultColorizationColorGreen: decimal-placeholder
      DwmDefaultColorizationColorRed: decimal-placeholder
  - policy_class: User
