# SUPPORTED_IE7
#
# This policy setting allows you to bypass prompting when a script that is running in any process on the computer attempts to perform a Clipboard operation (delete, copy, or paste).
# 
# If you enable this policy setting, the user is not prompted when a script that is running in any process on the computer performs a Clipboard operation. This means that if the zone behavior is currently set to prompt, it will be bypassed and enabled.
# 
# If you disable this policy setting, the user is prompted when a script that is running in any process on the computer attempts to perform a Clipboard operation.
# 
# If you do not configure this policy setting, current values of the URL action for the application or process on the computer prevail.
Bypass prompting for Clipboard access for scripts running in any process:
  lgpo.set:
  - name: IESF_PolicyScriptPasteAllProcesses
  - setting: Enabled
  - policy_class: User
