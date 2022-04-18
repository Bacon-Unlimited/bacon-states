# windows:SUPPORTED_Windows7ToXPAndWindows10
#
# If you enable this setting, the frequently used programs list is removed from the Start menu.
# 
# If you disable this setting or do not configure it, the frequently used programs list remains on the simple Start menu.
Remove frequent programs list from the Start Menu:
  lgpo.set:
  - name: NoFrequentUsedPrograms
  - setting: Enabled
  - policy_class: User
