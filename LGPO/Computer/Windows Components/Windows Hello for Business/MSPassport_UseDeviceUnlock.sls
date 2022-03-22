# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Configure a comma separated list of credential provider GUIDs, such as face and fingerprint provider GUIDs, to be used as the first and second unlock factors. If the trusted signal provider is specified as one of the unlock factors, you should also configure a comma separated list of signal rules in the form of xml for each signal type to be verified.
# 
# If you enable this policy setting, the user will have to use one factor from each list to successfully unlock.
# 
# If you disable or do not configure this policy setting, users can continue to unlock with existing unlock options.
# 
# For more information see: https://go.microsoft.com/fwlink/?linkid=849684
#         
Configure device unlock factors:
  lgpo.set:
  - name: MSPassport_UseDeviceUnlock
  - setting:
      MSPassport_UseDeviceUnlock_GroupA: text-placeholder
      MSPassport_UseDeviceUnlock_GroupB: text-placeholder
      MSPassport_UseDeviceUnlock_Plugins: text-placeholder
  - policy_class: Machine
