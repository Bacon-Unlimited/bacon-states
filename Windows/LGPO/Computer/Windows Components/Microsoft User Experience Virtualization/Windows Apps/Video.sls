# windows:SUPPORTED_Windows8
#
# This policy setting configures the synchronization of user settings for the Video app.
# By default, the user settings of Video sync between computers. Use the policy setting to prevent the user settings of Video from synchronizing between computers.
# If you enable this policy setting, Video user settings continue to sync.
# If you disable this policy setting, Video user settings are excluded from synchronization.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Video:
  lgpo.set:
  - name: Video
  - setting: Enabled
  - policy_class: Machine
