# SUPPORTED_NetMeeting3
#
# Prevents users from turning on automatic acceptance of incoming calls.
# 
# This ensures that others cannot call and connect to NetMeeting when the user is not present.
# 
# This policy is recommended when deploying NetMeeting to run always.
Prevent automatic acceptance of Calls:
  lgpo.set:
  - name: PreventAutoAccept
  - setting: Enabled
  - policy_class: User
