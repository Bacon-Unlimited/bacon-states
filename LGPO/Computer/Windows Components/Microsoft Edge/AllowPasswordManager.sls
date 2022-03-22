# SUPPORTED_INTERNET_BROWSER_WIN10
#
# This policy setting lets you decide whether employees can save their passwords locally, using Password Manager. By default, Password Manager is turned on.
# 
# If you enable this setting, employees can use Password Manager to save their passwords locally.
# 
# If you disable this setting, employees can't use Password Manager to save their passwords locally.
# 
# If you don't configure this setting, employees can choose whether to use Password Manager to save their passwords locally.
Configure Password Manager:
  lgpo.set:
  - name: AllowPasswordManager
  - setting: Enabled
  - policy_class: Machine
