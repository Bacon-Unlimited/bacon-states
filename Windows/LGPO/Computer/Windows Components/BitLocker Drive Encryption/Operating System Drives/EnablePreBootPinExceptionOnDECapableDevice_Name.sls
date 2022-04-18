# windows:SUPPORTED_Windows_10_0_RS2
#
# This policy setting allows users on devices that are compliant with InstantGo or Microsoft Hardware Security Test Interface (HSTI) to not have a PIN for pre-boot authentication. This overrides the "Require startup PIN with TPM" and "Require startup key and PIN with TPM" options of the "Require additional authentication at startup" policy on compliant hardware.
# 
# If you enable this policy setting, users on InstantGo and HSTI compliant devices will have the choice to turn on BitLocker without pre-boot authentication.
# 
# If this policy is not enabled, the options of "Require additional authentication at startup" policy apply.
#       
Allow devices compliant with InstantGo or HSTI to opt out of pre-boot PIN.:
  lgpo.set:
  - name: EnablePreBootPinExceptionOnDECapableDevice_Name
  - setting: Enabled
  - policy_class: Machine
