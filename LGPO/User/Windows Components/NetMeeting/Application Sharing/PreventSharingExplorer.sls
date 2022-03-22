# SUPPORTED_NetMeeting3
#
# Prevents users from sharing Explorer windows.  This prevents users from inadvertently sharing out applications, since Explorer windows can be used to launch other applications.
Prevent Sharing Explorer windows:
  lgpo.set:
  - name: PreventSharingExplorer
  - setting: Enabled
  - policy_class: User
