# windows:SUPPORTED_Win2k
#
# This policy setting displays the instructions in logon scripts as they run.
# 
# Logon scripts are batch files of instructions that run when the user logs on. By default, the system does not display the instructions in logon scripts.
# 
# If you enable this policy setting, the system displays each instruction in the logon script as it runs. The instructions appear in a command window. This policy setting is designed for advanced users.
# 
# If you disable or do not configure this policy setting, the instructions are suppressed.
Display instructions in logon scripts as they run:
  lgpo.set:
  - name: Run_Logon_Script_Visible
  - setting: Enabled
  - policy_class: User
