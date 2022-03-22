# windows:SUPPORTED_WindowsNET
#
# This policy setting allows you to prevent Remote Desktop Services from creating session-specific temporary folders.
# 
# You can use this policy setting to disable the creation of separate temporary folders on a remote computer for each session. By default, Remote Desktop Services creates a separate temporary folder for each active session that a user maintains on a remote computer. These temporary folders are created on the remote computer in a Temp folder under the user's profile folder and are named with the sessionid.
# 
# If you enable this policy setting, per-session temporary folders are not created. Instead, a user's temporary files for all sessions on the remote computer are stored in a common Temp folder under the user's profile folder on the remote computer.
# 
# If you disable this policy setting, per-session temporary folders are always created, even if the server administrator specifies otherwise.
# 
# If you do not configure this policy setting, per-session temporary folders are created unless the server administrator specifies otherwise.
# 
Do not use temporary folders per session:
  lgpo.set:
  - name: TS_TEMP_PER_SESSION
  - setting: Enabled
  - policy_class: Machine
