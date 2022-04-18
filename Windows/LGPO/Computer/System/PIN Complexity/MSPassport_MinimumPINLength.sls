# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Minimum PIN length configures the minimum number of characters required for the PIN.  The lowest number you can configure for this policy setting is 4.  The largest number you can configure must be less than the number configured in the Maximum PIN length policy setting or the number 127, whichever is the lowest.
# 
# If you configure this policy setting, the PIN length must be greater than or equal to this number.
# 
# If you disable or do not configure this policy setting, the PIN length must be greater than or equal to 4.
# 
# NOTE: If the above specified conditions for the minimum PIN length are not met, default values will be used for both the maximum and minimum PIN lengths.
#         
Minimum PIN length:
  lgpo.set:
  - name: MSPassport_MinimumPINLength
  - setting:
      MSPassport_MinimumPINLengthDataType: decimal-placeholder
  - policy_class: Machine
