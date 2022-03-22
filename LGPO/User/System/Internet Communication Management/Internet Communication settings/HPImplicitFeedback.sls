# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies whether users can participate in the Help Experience Improvement program. The Help Experience Improvement program collects information about how customers use Windows Help so that Microsoft can improve it.
# 
# If you enable this policy setting, users cannot participate in the Help Experience Improvement program.
# 
# If you disable or do not configure this policy setting, users can turn on the Help Experience Improvement program feature from the Help and Support settings page.
Turn off Help Experience Improvement Program:
  lgpo.set:
  - name: HPImplicitFeedback
  - setting: Enabled
  - policy_class: User
