# windows:SUPPORTED_Win2k
#
# This policy setting hides the instructions in logon scripts written for Windows NT 4.0 and earlier. 
# 
# Logon scripts are batch files of instructions that run when the user logs on. By default, Windows 2000 displays the instructions in logon scripts written for Windows NT 4.0 and earlier in a command window as they run, although it does not display logon scripts written for Windows 2000.
# 
# If you enable this setting, Windows 2000 does not display logon scripts written for Windows NT 4.0 and earlier.
# 
# If you disable or do not configure this policy setting, Windows 2000 displays login scripts written for Windows NT 4.0 and earlier.
# 
# Also, see the "Run Logon Scripts Visible" setting.
Run legacy logon scripts hidden:
  lgpo.set:
  - name: Run_Legacy_Logon_Script_Hidden
  - setting: Enabled
  - policy_class: User
