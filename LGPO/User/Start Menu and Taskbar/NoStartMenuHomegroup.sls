# windows:SUPPORTED_Windows7Only
#
# If you enable this policy the Start menu will not show a link to Homegroup. It also removes the homegroup item from the Start Menu options. As a result, users cannot add the homegroup link to the Start Menu.
# 
#       If you disable or do not configure this policy, users can use the Start Menu options to add or remove the homegroup link from the Start Menu.
Remove Homegroup link from Start Menu:
  lgpo.set:
  - name: NoStartMenuHomegroup
  - setting: Enabled
  - policy_class: User
