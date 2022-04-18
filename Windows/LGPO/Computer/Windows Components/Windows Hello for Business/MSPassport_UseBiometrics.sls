# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Windows Hello for Business enables users to use biometric gestures, such as face and fingerprints, as an alternative to the PIN gesture. However users must still configure a PIN to use in case of failures.
# 
# If you enable or do not configure this policy setting, Windows Hello for Business allows the use biometric gestures.
# 
# If you disable this policy setting, Windows Hello for Business prevents the use of biometric gestures.
# 
# NOTE: Disabling this policy prevents the user of biometric gestures on the device for all account types.
#         
Use biometrics:
  lgpo.set:
  - name: MSPassport_UseBiometrics
  - setting: Enabled
  - policy_class: Machine
