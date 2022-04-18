# windows:SUPPORTED_Win2k
#
# This policy setting displays the instructions in logoff scripts as they run.
# 
# Logoff scripts are batch files of instructions that run when the user logs off. By default, the system does not display the instructions in the logoff script.
# 
# If you enable this policy setting, the system displays each instruction in the logoff script as it runs. The instructions appear in a command window. This policy setting is designed for advanced users.
# 
# If you disable or do not configure this policy setting, the instructions are suppressed.
Display instructions in logoff scripts as they run:
  lgpo.set:
  - name: Run_Logoff_Script_Visible
  - setting: Enabled
  - policy_class: User
