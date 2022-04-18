# windows:SUPPORTED_Windows_10_0
#
# Support for device authentication using certificate will require connectivity to a DC in the device account domain which supports certificate authentication for computer accounts. 
# 
# This policy setting allows you to set support for Kerberos to attempt authentication using the certificate for the device to the domain.
# 
# If you enable this policy setting, the devices credentials will be selected based on the following options:
# 
# Automatic: Device will attempt to authenticate using its certificate. If the DC does not support computer account authentication using certificates then authentication with password will be attempted.
# 
# Force: Device will always authenticate using its certificate. If a DC cannot be found which support computer account authentication using certificates then authentication will fail.
# 
# If you disable this policy setting, certificates will never be used.
# If you do not configure this policy setting, Automatic will be used.
# 
Support device authentication using certificate:
  lgpo.set:
  - name: DevicePKInitEnabled
  - setting:
      DevicePKInitBehavior: enum-placeholder
  - policy_class: Machine
