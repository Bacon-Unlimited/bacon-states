# windows:SUPPORTED_Windows8
#
# This policy setting controls configuring the device's Active Directory account for compound authentication.
# 
# Support for providing compound authentication which is used for access control will require enough domain controllers in the resource account domains to support the requests. The Domain Administrator must configure the policy "Support Dynamic Access Control and Kerberos armoring" on all the domain controllers to support this policy.
# 
# If you enable this policy setting, the device's Active Directory account will be configured for compound authentication by the following options:
# 
# Never: Compound authentication is never provided for this computer account.
# 
# Automatic: Compound authentication is provided for this computer account when one or more applications are configured for Dynamic Access Control.
# 
# Always: Compound authentication is always provided for this computer account.
# 
# If you disable this policy setting, Never will be used.
# If you do not configure this policy setting, Automatic will be used.
# 
Support compound authentication:
  lgpo.set:
  - name: ServerAcceptsCompound
  - setting:
      CompoundIdEnabled: enum-placeholder
  - policy_class: Machine
