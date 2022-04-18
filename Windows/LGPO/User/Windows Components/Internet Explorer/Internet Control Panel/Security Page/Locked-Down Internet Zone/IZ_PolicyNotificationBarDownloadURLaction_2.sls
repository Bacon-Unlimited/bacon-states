# SUPPORTED_IE6SP2
#
# This policy setting determines whether users will be prompted for non user-initiated file downloads. Regardless of this setting, users will receive file download dialogs for user-initiated downloads.
# 
# If you enable this setting, users will receive a file download dialog for automatic download attempts.
# 
# If you disable or do not configure this setting, file downloads that are not user-initiated will be blocked, and users will see the Notification bar instead of the file download dialog. Users can then click the Notification bar to allow the file download prompt.
Automatic prompting for file downloads:
  lgpo.set:
  - name: IZ_PolicyNotificationBarDownloadURLaction_2
  - setting:
      IZ_Partname2200: enum-placeholder
  - policy_class: User
