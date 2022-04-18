# windows:SUPPORTED_WindowsXP
#
# Removes the Properties option from the Recycle Bin context menu.
# 
# If you enable this setting, the Properties option will not be present when the user right-clicks on Recycle Bin or opens Recycle Bin and then clicks File. Likewise, Alt-Enter does nothing when Recycle Bin is selected.
# 
# If you disable or do not configure this setting, the Properties option is displayed as usual.
Remove Properties from the Recycle Bin context menu:
  lgpo.set:
  - name: NoRecycleBinProperties
  - setting: Enabled
  - policy_class: User
