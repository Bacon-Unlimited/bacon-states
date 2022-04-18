# SUPPORTED_IE5
#
# Specifies that error messages will be displayed to users if problems occur with proxy scripts.
# 
# If you enable this policy, error messages will be displayed when the browser does not download or run a script to set proxy settings.
# 
# If you disable this policy or do not configure it, error messages will not be displayed when problems occur with proxy scripts.
Display error message on proxy script download failure:
  lgpo.set:
  - name: DisplayScriptFailureUI
  - setting: Enabled
  - policy_class: User
