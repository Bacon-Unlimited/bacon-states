# windows:SUPPORTED_Win2k
#
# Limits the Windows programs that users have permission to run on the computer.
# 
# If you enable this policy setting, users can only run programs that you add to the list of allowed applications.
# 
# If you disable this policy setting or do not configure it, users can run all applications.
# 
# This policy setting only prevents users from running programs that are started by the File Explorer process.  It does not prevent users from running programs such as Task Manager, which are started by the system process or by other processes.  Also, if users have access to the command prompt (Cmd.exe), this policy setting does not prevent them from starting programs in the command window even though they would be prevented from doing so using File Explorer.
# 
# Note: Non-Microsoft applications with Windows 2000 or later certification are required to comply with this policy setting.
# Note: To create a list of allowed applications, click Show.  In the Show Contents dialog box, in the Value column, type the application executable name (e.g., Winword.exe, Poledit.exe, Powerpnt.exe).
Run only specified Windows applications:
  lgpo.set:
  - name: RestrictApps
  - setting:
      RestrictApps_RestrictAppsList:
      - placeholder1
      - placeholder2
  - policy_class: User
