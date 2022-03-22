# windows:SUPPORTED_Windows7ToVista
#
# Disables visual pen action feedback, except for press and hold feedback.
# 
# If you enable this policy, all visual pen action feedback is disabled except for press and hold feedback.  Additionally, the mouse cursors are shown instead of the pen cursors.
# 
# If you disable or do not configure this policy, visual feedback and pen cursors will be shown unless the user disables them in Control Panel.
Turn off pen feedback:
  lgpo.set:
  - name: TurnOffFeedback_2
  - setting: Enabled
  - policy_class: Machine
