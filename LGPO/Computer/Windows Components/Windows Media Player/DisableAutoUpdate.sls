# SUPPORTED_WMP9
#
# This policy setting allows you to turn off do not show first use dialog boxes.
# 
# If you enable this policy setting, the Privacy Options and Installation Options dialog boxes are prevented from being displayed the first time a user starts Windows Media Player.
# 
# This policy setting prevents the dialog boxes which allow users to select privacy, file types, and other desktop options from being displayed when the Player is first started. Some of the options can be configured by using other Windows Media Player group policies.
# 
# If you disable or do not configure this policy setting, the dialog boxes are displayed when the user starts the Player for the first time.
Prevent Automatic Updates:
  lgpo.set:
  - name: DisableAutoUpdate
  - setting: Enabled
  - policy_class: Machine
