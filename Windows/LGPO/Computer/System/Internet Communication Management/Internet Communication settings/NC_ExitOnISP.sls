# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# This policy setting specifies whether the Internet Connection Wizard can connect to Microsoft to download a list of Internet Service Providers (ISPs).
# 
# If you enable this policy setting, the "Choose a list of Internet Service Providers" path in the Internet Connection Wizard causes the wizard to exit. This prevents users from retrieving the list of ISPs, which resides on Microsoft servers.
# 
# If you disable or do not configure this policy setting, users can connect to Microsoft to download a list of ISPs for their area.
Turn off Internet Connection Wizard if URL connection is referring to Microsoft.com:
  lgpo.set:
  - name: NC_ExitOnISP
  - setting: Enabled
  - policy_class: Machine
