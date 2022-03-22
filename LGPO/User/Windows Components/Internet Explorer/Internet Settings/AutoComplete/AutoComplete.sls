# SUPPORTED_IE7
#
# This policy setting allows you to turn on inline AutoComplete in Internet Explorer and File Explorer. The AutoComplete feature provides suggestions for what the user types by automatically completing the address or command with the closest match.
# 
# If you enable this policy setting, inline AutoComplete is turned on. The user cannot turn it off.
# 
# If you disable this policy setting, inline AutoComplete is turned off. The user cannot turn it on.
# 
# If you do not configure this policy setting, the user can turn on or turn off inline AutoComplete.
# 
# By default, inline AutoComplete is turned off for Windows Vista, Windows 7, Internet Explorer 7, and Internet Explorer 8. By default, inline AutoComplete is turned on for Internet Explorer 9.
Turn on inline AutoComplete:
  lgpo.set:
  - name: AutoComplete
  - setting: Enabled
  - policy_class: User
