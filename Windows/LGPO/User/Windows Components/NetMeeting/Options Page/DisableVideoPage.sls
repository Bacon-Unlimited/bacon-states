# SUPPORTED_NetMeeting3
#
# Hides the Video page of the Tools Options dialog.  Users will not then be able to change video settings.
Hide the Video page:
  lgpo.set:
  - name: DisableVideoPage
  - setting: Enabled
  - policy_class: User
