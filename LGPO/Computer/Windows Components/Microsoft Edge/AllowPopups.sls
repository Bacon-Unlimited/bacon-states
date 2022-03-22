# SUPPORTED_INTERNET_BROWSER_WIN10
#
# This policy setting lets you decide whether to turn on Pop-up Blocker. By default, Pop-up Blocker is turned on..
# 
# If you enable this setting, Pop-up Blocker is turned on, stopping pop-up windows from appearing.
# 
# If you disable this setting, Pop-up Blocker is turned off, letting pop-ups windows appear.
# 
# If you don't configure this setting, employees can choose whether to use Pop-up Blocker.
Configure Pop-up Blocker:
  lgpo.set:
  - name: AllowPopups
  - setting: Enabled
  - policy_class: Machine
