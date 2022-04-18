# SUPPORTED_NetMeeting3
#
# Prevents users from changing the way calls are placed, either directly or via a gatekeeper server.
Prevent changing Call placement method:
  lgpo.set:
  - name: PreventChangingCallMode
  - setting: Enabled
  - policy_class: User
