# windows:SUPPORTED_Windows_10_0
#
# This policy setting allows an organization to prevent its devices from showing feedback questions from Microsoft.
# 
# If you enable this policy setting, users will no longer see feedback notifications through the Windows Feedback app.
# 
# If you disable or do not configure this policy setting, users may see notifications through the Windows Feedback app asking users for feedback.
# 
# Note: If you disable or do not configure this policy setting, users can control how often they receive feedback questions.
Do not show feedback notifications:
  lgpo.set:
  - name: DoNotShowFeedbackNotifications
  - setting: Enabled
  - policy_class: Machine
