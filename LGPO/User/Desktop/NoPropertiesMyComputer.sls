# windows:SUPPORTED_Win2kSP3
#
# This setting hides Properties on the context menu for Computer.
# 
# If you enable this setting, the Properties option will not be present when the user right-clicks My Computer or clicks Computer and then goes to the File menu.  Likewise, Alt-Enter does nothing when Computer is selected.
# 
# If you disable or do not configure this setting, the Properties option is displayed as usual.
Remove Properties from the Computer icon context menu:
  lgpo.set:
  - name: NoPropertiesMyComputer
  - setting: Enabled
  - policy_class: User
