# SUPPORTED_INTERNET_BROWSER_WIN10
#
# This setting lets you decide whether employees can run Adobe Flash in Microsoft Edge.
# 
# If you enable or don't configure this setting, employees can use Adobe Flash.
# 
# If you disable this setting, employees can't use Adobe Flash.
# 
#       
Allow Adobe Flash:
  lgpo.set:
  - name: AllowFlash
  - setting: Enabled
  - policy_class: Machine
