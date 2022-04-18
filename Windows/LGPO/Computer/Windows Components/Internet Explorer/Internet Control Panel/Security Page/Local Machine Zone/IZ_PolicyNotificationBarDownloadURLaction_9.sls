# SUPPORTED_IE6SP2
#
# This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.
# 
# If you enable this setting, users will receive a file download dialog for automatic download attempts.
# 
# If you disable or do not configure this setting, users will receive a file download dialog for automatic download attempts.
Automatic prompting for file downloads:
  lgpo.set:
  - name: IZ_PolicyNotificationBarDownloadURLaction_9
  - setting:
      IZ_Partname2200: enum-placeholder
  - policy_class: Machine
