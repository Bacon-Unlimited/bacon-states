# SUPPORTED_IE7
#
# This policy setting specifies whether to display script errors when a page does not appear properly because of problems with its scripting. This feature is off by default, but it is useful to developers when they are testing webpages.
# 
# If you enable this policy setting, the user is shown script errors when a page does not appear properly because of problems with its scripting. The user cannot change this policy setting.
# 
# If you disable this policy setting, the user is not shown script errors when a page does not appear properly because of problems with its scripting. The user cannot change this policy setting.
# 
# If you do not configure this policy setting, the user can turn on or turn off the display of script errors.
Turn on the display of script errors:
  lgpo.set:
  - name: ScriptErrorCache
  - setting: Enabled
  - policy_class: User
