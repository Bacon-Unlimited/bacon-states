# SUPPORTED_IE7
#
# This policy setting allows you to bypass prompting when a script that is running in the Internet Explorer process attempts to perform a Clipboard operation (delete, copy, or paste) and the URL action for the zone is set to prompt.
# 
# If you enable this policy setting, the user is not prompted when a script that is running in the Internet Explorer process performs a Clipboard operation. In the Internet Explorer process, if the zone behavior is currently set to prompt, it will be bypassed and enabled.
# 
# If you disable this policy setting, the user is prompted when a script that is running in the Internet Explorer process attempts to perform a Clipboard operation.
# 
# If you do not configure this policy setting, current values of the URL action for the Internet Explorer process prevail.
Bypass prompting for Clipboard access for scripts running in the Internet Explorer process:
  lgpo.set:
  - name: IESF_PolicyScriptPasteExplorerProcesses
  - setting: Enabled
  - policy_class: Machine
