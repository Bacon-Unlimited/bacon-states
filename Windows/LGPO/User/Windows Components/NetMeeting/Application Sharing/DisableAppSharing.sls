# SUPPORTED_NetMeeting3
#
# Disables the application sharing feature of NetMeeting completely.  Users will not be able to host or view shared applications.
Disable application Sharing:
  lgpo.set:
  - name: DisableAppSharing
  - setting: Enabled
  - policy_class: User
