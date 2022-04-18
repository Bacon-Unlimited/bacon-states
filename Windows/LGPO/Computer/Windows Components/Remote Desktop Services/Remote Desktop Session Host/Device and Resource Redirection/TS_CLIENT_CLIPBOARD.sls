# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies whether to prevent the sharing of Clipboard contents (Clipboard redirection) between a remote computer and a client computer during a Remote Desktop Services session.
# 
# You can use this setting to prevent users from redirecting Clipboard data to and from the remote computer and the local computer. By default, Remote Desktop Services allows Clipboard redirection.
# 
# If you enable this policy setting, users cannot redirect Clipboard data.
# 
# If you disable this policy setting, Remote Desktop Services always allows Clipboard redirection.
# 
# If you do not configure this policy setting, Clipboard redirection is not specified at the Group Policy level. 
# 
Do not allow Clipboard redirection:
  lgpo.set:
  - name: TS_CLIENT_CLIPBOARD
  - setting: Enabled
  - policy_class: Machine
