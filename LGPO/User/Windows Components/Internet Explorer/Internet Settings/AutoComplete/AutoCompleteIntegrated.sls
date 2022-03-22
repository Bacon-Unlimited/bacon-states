# SUPPORTED_IE4ONLY
#
# This policy setting let you turn off Inline AutoComplete in File Explorer. Inline AutoComplete provides suggestions for what you type by automatically completing the command inline with the closest match. By default, this functionality is turned on in File Explorer.
# 
# If you enable this policy setting, Inline AutoComplete for File Explorer is turned off. The user cannot turn it on.
# 
# If you disable this policy setting, Inline AutoComplete for File Explorer is turned on. The user cannot turn it off.
# 
# If you do not configure this policy setting, a user will have the freedom to turn on or off Inline AutoComplete for File Explorer.
Turn off inline AutoComplete in File Explorer:
  lgpo.set:
  - name: AutoCompleteIntegrated
  - setting: Enabled
  - policy_class: User
