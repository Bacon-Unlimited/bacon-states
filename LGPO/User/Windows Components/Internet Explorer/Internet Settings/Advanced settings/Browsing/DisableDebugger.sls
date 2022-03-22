# SUPPORTED_IE7
#
# This policy setting allows you to turn on your script debugger, if one is installed. Website developers use script debuggers to test programs and scripts on their webpages. You can use the script debugger to browse, edit, and debug .htm and .asp files that contain Microsoft Visual Basic Scripting Edition (VBScript) or Microsoft JScript.
# 
# If you enable this policy setting, script debugging is turned on. The user cannot turn off script debugging.
# 
# If you disable this policy setting, script debugging is turned off. The user cannot turn on script debugging.
# 
# If you do not configure this policy setting, the user can turn on or turn off script debugging.
Turn on script debugging:
  lgpo.set:
  - name: DisableDebugger
  - setting: Enabled
  - policy_class: User
