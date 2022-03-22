# SUPPORTED_NetMeeting3
#
# Prevents users from adding directory (ILS) servers to the list of those they can use for placing calls.
Prevent adding Directory servers:
  lgpo.set:
  - name: PreventAddingNewILS
  - setting: Enabled
  - policy_class: User
