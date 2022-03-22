# SUPPORTED_IE8
#
# This policy setting allows you to lock the Stop and Refresh buttons next to the Back and Forward buttons.
# 
# If you enable this policy setting, the Stop and Refresh buttons are next to the Forward and Back buttons, and the user cannot move them.
# 
# If you disable this policy setting, the Stop and Refresh buttons are next to the Address bar, and the user cannot move them.
# 
# If you do not configure this policy setting, the Stop and Refresh buttons are next to the Address bar by default, and the user can choose to move them.
Lock location of Stop and Refresh buttons:
  lgpo.set:
  - name: MoveStopRefresh
  - setting: Enabled
  - policy_class: Machine
