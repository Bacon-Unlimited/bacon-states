# windows:SUPPORTED_WindowsVista
#
# This policy setting allows user logon scripts to run when the logon cross-forest, DNS suffixes are not configured, and NetBIOS or WINS is disabled. This policy setting affects all user accounts interactively logging on to the computer.
# 
# If you enable this policy setting, user logon scripts run if NetBIOS or WINS is disabled during cross-forest logons without the DNS suffixes being configured.
# 
# If you disable or do not configure this policy setting, user account cross-forest, interactive logging cannot run logon scripts if NetBIOS or WINS is disabled, and the DNS suffixes are not configured.
Allow logon scripts when NetBIOS or WINS is disabled:
  lgpo.set:
  - name: Allow_Logon_Script_NetbiosDisabled
  - setting: Enabled
  - policy_class: Machine
