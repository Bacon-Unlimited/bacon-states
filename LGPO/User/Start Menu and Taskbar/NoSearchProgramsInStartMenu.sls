# windows:SUPPORTED_Windows7ToVista
#
# If you enable this policy setting the Start menu search box will not search for programs or Control Panel items.
# 
# If you disable or do not configure this policy setting, the Start menu search box will search for programs and Control Panel items, unless the user chooses not to do so directly in Control Panel.
Do not search programs and Control Panel items:
  lgpo.set:
  - name: NoSearchProgramsInStartMenu
  - setting: Enabled
  - policy_class: User
