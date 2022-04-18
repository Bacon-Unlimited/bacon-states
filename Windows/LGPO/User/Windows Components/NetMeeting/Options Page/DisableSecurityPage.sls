# SUPPORTED_NetMeeting3
#
# Hides the Security page of the Tools Options dialog.  Users will not then be able to change call security and authentication settings.
Hide the Security page:
  lgpo.set:
  - name: DisableSecurityPage
  - setting: Enabled
  - policy_class: User
