# SUPPORTED_IE8
#
# This policy setting allows you to choose among three different labels for command buttons: show all text labels, show selective text, or show only icons.
# 
# If you enable this policy setting, command buttons are displayed according to which one of the following options you choose, and the user cannot change how command buttons are displayed:
# 
# Show all text labels: All command buttons have only text.
# 
# Show selective text: Some command buttons have only text; some have icons and text.
# 
# Show only icons: All command buttons have only icons.
# 
# If you disable or do not configure this policy setting, the command buttons show selective text by default, and the user can change this.
Customize command labels:
  lgpo.set:
  - name: SetCommandLabels
  - setting:
      CommandLabelOptions: enum-placeholder
  - policy_class: Machine
