# windows:SUPPORTED_WindowsNET
#
# This policy setting specifies whether Remote Desktop Services retains a user's per-session temporary folders at logoff.
# 
# You can use this setting to maintain a user's session-specific temporary folders on a remote computer, even if the user logs off from a session. By default, Remote Desktop Services deletes a user's temporary folders when the user logs off.
# 
# If you enable this policy setting, a user's per-session temporary folders are retained when the user logs off from a session.
# 
# If you disable this policy setting, temporary folders are deleted when a user logs off, even if the server administrator specifies otherwise.
# 
# If you do not configure this policy setting, Remote Desktop Services deletes the temporary folders from the remote computer at logoff, unless specified otherwise by the server administrator.
# 
# Note: This setting only takes effect if per-session temporary folders are in use on the server. If you enable the Do not use temporary folders per session policy setting, this policy setting has no effect.
# 
Do not delete temp folders upon exit:
  lgpo.set:
  - name: TS_TEMP_DELETE
  - setting: Enabled
  - policy_class: Machine
