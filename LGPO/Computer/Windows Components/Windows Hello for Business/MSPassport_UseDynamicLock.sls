# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Configure a comma separated list of signal rules in the form of xml for each signal type.
# 
# If you enable this policy setting, these signal rules will be evaluated to detect user absence and automatically lock the device.
# 
# If you disable or do not configure this policy setting, users can continue to lock with existing locking options.
# 
# For more information see: https://go.microsoft.com/fwlink/?linkid=849684
#         
Configure dynamic lock factors:
  lgpo.set:
  - name: MSPassport_UseDynamicLock
  - setting:
      MSPassport_UseDynamicLock_Plugins: text-placeholder
  - policy_class: Machine
