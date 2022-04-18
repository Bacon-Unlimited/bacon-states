# SUPPORTED_NetMeeting3
#
# Prevents users from allowing others in a conference to control what they have shared.  This enforces a read-only mode; the other participants cannot change the data in the shared application.
Prevent Control:
  lgpo.set:
  - name: PreventGrantingControl
  - setting: Enabled
  - policy_class: User
