# windows:SUPPORTED_Windows8
#
# Shows or hides sleep from the power options menu.
# 
# If you enable this policy setting, the sleep option will be shown in the Power Options menu (as long as it is supported by the machine's hardware).
# 
# If you disable this policy setting, the sleep option will never be shown in the Power Options menu.
# 
# If you do not configure this policy setting, users will be able to choose whether they want sleep to show through the Power Options Control Panel.
Show sleep in the power options menu:
  lgpo.set:
  - name: ShowSleepOption
  - setting: Enabled
  - policy_class: Machine
