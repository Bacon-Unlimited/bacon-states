# TS_SUPPORTED_Win2k3_Sp1
#
# This policy setting determines whether the desktop is always displayed after a client connects to a remote computer or an initial program can run. It can be used to require that the desktop be displayed after a client connects to a remote computer, even if an initial program is already specified in the default user profile, Remote Desktop Connection, Remote Desktop Services client, or through Group Policy.
# 
# If you enable this policy setting, the desktop is always displayed when a client connects to a remote computer. This policy setting overrides any initial program policy settings.
# 
# If you disable or do not configure this policy setting, an initial program can be specified that runs on the remote computer after the client connects to the remote computer. If an initial program is not specified, the desktop is always displayed on the remote computer after the client connects to the remote computer.
# 
# Note: If this policy setting is enabled, then the "Start a program on connection" policy setting is ignored.
Always show desktop on connection:
  lgpo.set:
  - name: TS_TURNOFF_SINGLEAPP
  - setting: Enabled
  - policy_class: Machine
