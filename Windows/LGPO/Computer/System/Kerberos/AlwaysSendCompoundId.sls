# windows:SUPPORTED_Windows_6_3
#
# This policy setting controls whether a device always sends a compound authentication request when the resource domain requests compound identity.
# 
# Note: For a domain controller to request compound authentication, the policies "KDC support for claims, compound authentication, and Kerberos armoring" and "Request compound authentication" must be configured and enabled in the resource account domain. 
# 
# If you enable this policy setting and the resource domain requests compound authentication, devices that support compound authentication always send a compound authentication request. 
# 
# If you disable or do not configure this policy setting and the resource domain requests compound authentication, devices will send a non-compounded authentication request first then a compound authentication request when the service requests compound authentication.
# 
Always send compound authentication first:
  lgpo.set:
  - name: AlwaysSendCompoundId
  - setting: Enabled
  - policy_class: Machine
