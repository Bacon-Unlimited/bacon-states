# windows:SUPPORTED_Win2k
#
# This policy setting displays the instructions in shutdown scripts as they run.
# 
# Shutdown scripts are batch files of instructions that run when the user restarts the system or shuts it down. By default, the system does not display the instructions in the shutdown script.
# 
# If you enable this policy setting, the system displays each instruction in the shutdown script as it runs. The instructions appear in a command window.
# 
# If you disable or do not configure this policy setting, the instructions are suppressed.
Display instructions in shutdown scripts as they run:
  lgpo.set:
  - name: Run_Shutdown_Script_Visible
  - setting: Enabled
  - policy_class: Machine
