# SUPPORTED_NetMeeting3
#
# Prevents users from sharing command prompts.  This prevents users from inadvertently sharing out applications, since command prompts can be used to launch other applications.
Prevent Sharing Command Prompts:
  lgpo.set:
  - name: PreventSharingCMDPrompt
  - setting: Enabled
  - policy_class: User
