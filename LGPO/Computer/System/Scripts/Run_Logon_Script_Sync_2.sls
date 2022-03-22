# windows:SUPPORTED_Win2k
#
# This policy setting directs the system to wait for logon scripts to finish running before it starts the File Explorer interface program and creates the desktop.
# 
# If you enable this policy setting, File Explorer does not start until the logon scripts have finished running. This policy setting ensures that logon script processing is complete before the user starts working, but it can delay the appearance of the desktop.
# 
# If you disable or do not configure this policy setting, the logon scripts and File Explorer are not synchronized and can run simultaneously.
# 
# This policy setting appears in the Computer Configuration and User Configuration folders. The policy setting set in Computer Configuration takes precedence over the policy setting set in User Configuration.
Run logon scripts synchronously:
  lgpo.set:
  - name: Run_Logon_Script_Sync_2
  - setting: Enabled
  - policy_class: Machine
