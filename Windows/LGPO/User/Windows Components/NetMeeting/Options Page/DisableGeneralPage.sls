# SUPPORTED_NetMeeting3
#
# Hides the General page of the Tools Options dialog.  Users will not then be able to change personal identification and bandwidth settings.
Hide the General page:
  lgpo.set:
  - name: DisableGeneralPage
  - setting: Enabled
  - policy_class: User
