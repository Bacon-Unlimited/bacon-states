# SUPPORTED_IE7
#
# This policy setting determines whether scripted windows are automatically displayed.
# 
# If you enable this policy setting, scripted windows are displayed.
# 
# If you disable this policy setting, the user must choose to display any scripted windows by using the Notification bar.
# 
# If you do not configure this policy setting, the user can enable or disable the Notification bar behavior.
Allow websites to prompt for information by using scripted windows:
  lgpo.set:
  - name: IZ_Policy_ScriptPrompt_10
  - setting:
      IZ_Partname2105: enum-placeholder
  - policy_class: Machine
