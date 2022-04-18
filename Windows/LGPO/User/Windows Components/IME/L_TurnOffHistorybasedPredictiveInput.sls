# windows:SUPPORTED_Windows8
#
# This policy setting allows you to turn off history-based predictive input.
# 
# If you enable this policy setting, history-based predictive input is turned off.
# 
# If you disable or do not configure this policy setting, history-based predictive input is on by default.
# 
# This policy setting applies to Japanese Microsoft IME only.
# 
# Note: Changes to this setting will not take effect until the user logs off.
Turn off history-based predictive input:
  lgpo.set:
  - name: L_TurnOffHistorybasedPredictiveInput
  - setting: Enabled
  - policy_class: User
