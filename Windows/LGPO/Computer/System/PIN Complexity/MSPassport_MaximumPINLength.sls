# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Maximum PIN length configures the maximum number of characters allowed for the PIN.  The largest number you can configure for this policy setting is 127. The lowest number you can configure must be larger than the number configured in the Minimum PIN length policy setting or the number 4, whichever is greater.
# 
# If you configure this policy setting, the PIN length must be less than or equal to this number.
# 
# If you disable or do not configure this policy setting, the PIN length must be less than or equal to 127.
# 
# NOTE: If the above specified conditions for the maximum PIN length are not met, default values will be used for both the maximum and minimum PIN lengths.
#         
Maximum PIN length:
  lgpo.set:
  - name: MSPassport_MaximumPINLength
  - setting:
      MSPassport_MaximumPINLengthDataType: decimal-placeholder
  - policy_class: Machine
