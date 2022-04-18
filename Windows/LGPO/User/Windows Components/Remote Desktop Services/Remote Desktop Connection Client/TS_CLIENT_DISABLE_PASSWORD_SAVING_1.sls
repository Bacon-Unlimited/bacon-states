# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# Controls whether a user can save passwords using Remote Desktop Connection.
# 
# If you enable this setting the credential saving checkbox in Remote Desktop Connection will be disabled and users will no longer be able to save passwords. When a user opens an RDP file using Remote Desktop Connection and saves his settings, any password that previously existed in the RDP file will be deleted.
# 
# If you disable this setting or leave it not configured, the user will be able to save passwords using Remote Desktop Connection
Do not allow passwords to be saved:
  lgpo.set:
  - name: TS_CLIENT_DISABLE_PASSWORD_SAVING_1
  - setting: Enabled
  - policy_class: User
