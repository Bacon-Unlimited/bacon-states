# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage the displayed message when a smart card is blocked.
# 
# If you enable this policy setting, the specified message will be displayed to the user when the smart card is blocked.  Note: The following policy setting must be enabled - Allow Integrated Unblock screen to be displayed at the time of logon.
# 
# If you disable or do not configure this policy setting, the default message will be displayed to the user when the smart card is blocked, if the integrated unblock feature is enabled.
Display string when smart card is blocked:
  lgpo.set:
  - name: IntegratedUnblockPromptString
  - setting:
      IntegratedUnblockPromptString: text-placeholder
  - policy_class: Machine
