# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# This setting specifies the period of time (in days) that a PIN can be used before the system requires the user to change it. The PIN can be set to expire after any number of days between 1 and 730, or PINs can be set to never expire if the policy is set to 0.
# 
# Default: 0.
#         
Expiration:
  lgpo.set:
  - name: MSPassport_PINExpiration
  - setting:
      MSPassport_PINExpirationDataType: decimal-placeholder
  - policy_class: Machine
