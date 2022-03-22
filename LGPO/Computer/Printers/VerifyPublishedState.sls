# windows:SUPPORTED_Win2k
#
# Directs the system to periodically verify that the printers published by this computer still appear in Active Directory.  This setting also specifies how often the system repeats the verification.
# 
#             By default, the system only verifies published printers at startup. This setting allows for periodic verification while the computer is operating.
# 
#             To enable this additional verification, enable this setting, and then select a verification interval.
# 
#             To disable verification, disable this setting, or enable this setting and select "Never" for the verification interval.
Check published state:
  lgpo.set:
  - name: VerifyPublishedState
  - setting:
      VerifyPublishedStateTitle: enum-placeholder
  - policy_class: Machine
