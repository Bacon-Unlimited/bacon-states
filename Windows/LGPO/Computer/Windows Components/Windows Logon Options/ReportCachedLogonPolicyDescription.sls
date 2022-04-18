# windows:SUPPORTED_WindowsVista
#
# This policy controls whether the logged on user should be notified if the logon server could not be contacted during logon and he has been logged on using previously stored account information.
# 
# If enabled, a notification popup will be displayed to the user when the user logs on with cached credentials.
# 
# If disabled or not configured, no popup will be displayed to the user.
Report when logon server was not available during user logon:
  lgpo.set:
  - name: ReportCachedLogonPolicyDescription
  - setting: Enabled
  - policy_class: Machine
