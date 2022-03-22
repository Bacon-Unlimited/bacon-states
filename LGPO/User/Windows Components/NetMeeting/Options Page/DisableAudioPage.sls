# SUPPORTED_NetMeeting3
#
# Hides the Audio page of the Tools Options dialog.  Users will not then be able to change audio settings.
Hide the Audio page:
  lgpo.set:
  - name: DisableAudioPage
  - setting: Enabled
  - policy_class: User
