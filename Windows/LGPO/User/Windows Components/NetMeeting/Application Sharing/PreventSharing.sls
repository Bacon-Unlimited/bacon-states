# SUPPORTED_NetMeeting3
#
# Prevents users from sharing anything themselves.  They will still be able to view shared applications/desktops from others.
Prevent Sharing:
  lgpo.set:
  - name: PreventSharing
  - setting: Enabled
  - policy_class: User
