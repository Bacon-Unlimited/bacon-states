# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure whether or not to display additional text to clients when they need to perform an action. The text displayed is a custom administrator-defined string. For example, the phone number to call the company help desk. The client interface will only display a maximum of 1024 characters. Longer strings will be truncated before display.
# 
#     If you enable this setting, the additional text specified will be displayed.
# 
#     If you disable or do not configure this setting, there will be no additional text displayed.
Display additional text to clients when they need to perform an action:
  lgpo.set:
  - name: UX_Configuration_CustomDefaultActionToastString
  - setting:
      UX_Configuration_CustomDefaultActionToastString: text-placeholder
  - policy_class: Machine
