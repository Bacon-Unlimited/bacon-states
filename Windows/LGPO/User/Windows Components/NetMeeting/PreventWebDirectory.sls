# SUPPORTED_NetMeeting3
#
# Prevents users from viewing directories as Web pages in a browser.
Prevent viewing Web directory:
  lgpo.set:
  - name: PreventWebDirectory
  - setting: Enabled
  - policy_class: User
