# windows:SUPPORTED_Win2k
#
# This policy setting lets the system run startup scripts simultaneously.
# 
# Startup scripts are batch files that run before the user is invited to log on. By default, the system waits for each startup script to complete before it runs the next startup script.
# 
# If you enable this policy setting, the system does not coordinate the running of startup scripts. As a result, startup scripts can run simultaneously.
# 
# If you disable or do not configure this policy setting, a startup cannot run until the previous script is complete.
# 
# Note: Starting with Windows Vista operating system, scripts that are configured to run asynchronously are no longer visible on startup, whether the ""Run startup scripts visible"" policy setting is enabled or not.
Run startup scripts asynchronously:
  lgpo.set:
  - name: Run_Startup_Script_Sync
  - setting: Enabled
  - policy_class: Machine
