# SUPPORTED_INTERNET_BROWSER_WIN10
#
# This policy setting lets you decide whether employees can use Autofill to automatically fill in form fields while using Microsoft Edge. By default, employees can choose whether to use Autofill.
# 
# If you enable this setting, employees can use Autofill to automatically fill in forms while using Microsoft Edge.
# 
# If you disable this setting, employees can't use Autofill to automatically fill in forms while using Microsoft Edge.
# 
# If you don't configure this setting, employees can choose whether to use Autofill to automatically fill in forms while using Microsoft Edge.
Configure Autofill:
  lgpo.set:
  - name: AllowAutofill
  - setting: Enabled
  - policy_class: Machine
