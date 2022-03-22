# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies whether users can provide ratings for Help content.
# 
# If you enable this policy setting, ratings controls are not added to Help content.
# 
# If you disable or do not configure this policy setting, ratings controls are added to Help topics.
# 
# Users can use the control to provide feedback on the quality and usefulness of the Help and Support content.
Turn off Help Ratings:
  lgpo.set:
  - name: HPExplicitFeedback
  - setting: Enabled
  - policy_class: User
