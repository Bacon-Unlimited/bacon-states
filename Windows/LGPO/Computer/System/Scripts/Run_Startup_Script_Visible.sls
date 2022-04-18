# windows:SUPPORTED_Win2k
#
# This policy setting displays the instructions in startup scripts as they run.
# 
# Startup scripts are batch files of instructions that run before the user is invited to log on. By default, the system does not display the instructions in the startup script.
# 
# If you enable this policy setting, the system displays each instruction in the startup script as it runs. Instructions appear in a command window. This policy setting is designed for advanced users.
# 
# If you disable or do not configure this policy setting, the instructions are suppressed.
# 
# Note: Starting with Windows Vista operating system, scripts that are configured to run asynchronously are no longer visible on startup, whether this policy setting is enabled or not.
Display instructions in startup scripts as they run:
  lgpo.set:
  - name: Run_Startup_Script_Visible
  - setting: Enabled
  - policy_class: Machine
