# windows:SUPPORTED_Windows_6_3
#
# This policy setting allows you to configure a domain controller to request compound authentication.
# 
# Note: For a domain controller to request compound authentication, the policy "KDC support for claims, compound authentication, and Kerberos armoring" must be configured and enabled. 
# 
# If you enable this policy setting, domain controllers will request compound authentication. The returned service ticket will contain compound authentication only when the account is explicitly configured. This policy should be applied to all domain controllers to ensure consistent application of this policy in the domain. 
# 
# If you disable or do not configure this policy setting, domain controllers will return service tickets that contain compound authentication any time the client sends a compound authentication request regardless of the account configuration.
# 
Request compound authentication:
  lgpo.set:
  - name: RequestCompoundId
  - setting: Enabled
  - policy_class: Machine
