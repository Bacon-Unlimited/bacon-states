# windows:SUPPORTED_Win2k
#
# This policy setting prevents users from running the interactive command prompt, Cmd.exe.  This policy setting also determines whether batch files (.cmd and .bat) can run on the computer.
# 
# If you enable this policy setting and the user tries to open a command window, the system displays a message explaining that a setting prevents the action.
# 
# If you disable this policy setting or do not configure it, users can run Cmd.exe and batch files normally.
# 
# Note: Do not prevent the computer from running batch files if the computer uses logon, logoff, startup, or shutdown batch file scripts, or for users that use Remote Desktop Services.
Prevent access to the command prompt:
  lgpo.set:
  - name: DisableCMD
  - setting:
      DisableCMDScripts: enum-placeholder
  - policy_class: User
