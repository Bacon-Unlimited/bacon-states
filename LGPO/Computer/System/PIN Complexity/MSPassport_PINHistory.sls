# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# This setting specifies the number of past PINs that can be associated to a user account that can’t be reused. This policy enables administrators to enhance security by ensuring that old PINs are not reused continually. PIN history is not preserved through PIN reset.
# 
# The value must be between 0 to 50 PINs. If this policy is set to 0, then storage of previous PINs is not required.
# 
# Default: 0.
#         
History:
  lgpo.set:
  - name: MSPassport_PINHistory
  - setting:
      MSPassport_PINHistoryDataType: decimal-placeholder
  - policy_class: Machine
