# SUPPORTED_NetMeeting3
#
# Prevents users from sharing applications in true color.  True color sharing uses more bandwidth in a conference.
Prevent Application Sharing in true color:
  lgpo.set:
  - name: PreventSharingTrueColor
  - setting: Enabled
  - policy_class: User
