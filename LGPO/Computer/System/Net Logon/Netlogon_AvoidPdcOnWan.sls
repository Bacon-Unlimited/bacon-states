# windows:SUPPORTED_WindowsXP
#
# This policy setting defines whether a domain controller (DC) should attempt to verify the password provided by a client with the PDC emulator if the DC failed to validate the password.
# 
# Contacting the PDC emulator is useful in case the client’s password was recently changed and did not propagate to the DC yet. Users may want to disable this feature if the PDC emulator is located over a slow WAN connection.
# 
# If you enable this policy setting, the DCs to which this policy setting applies will attempt to verify a password with the PDC emulator if the DC fails to validate the password.
# 
# If you disable this policy setting, the DCs will not attempt to verify any passwords with the PDC emulator. 
# 
# If you do not configure this policy setting, it is not applied to any DCs.
Contact PDC on logon failure:
  lgpo.set:
  - name: Netlogon_AvoidPdcOnWan
  - setting: Enabled
  - policy_class: Machine
