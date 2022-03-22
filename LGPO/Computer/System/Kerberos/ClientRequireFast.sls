# windows:SUPPORTED_Windows8
#
# This policy setting controls whether a computer requires that Kerberos message exchanges be armored when communicating with a domain controller.
# 
# Warning: When a domain does not support Kerberos armoring by enabling "Support Dynamic Access Control and Kerberos armoring", then all authentication for all its users will fail from computers with this policy setting enabled.
# 
# If you enable this policy setting, the client computers in the domain enforce the use of Kerberos armoring in only authentication service (AS) and ticket-granting service (TGS) message exchanges with the domain controllers. 
# 
# Note: The Kerberos Group Policy "Kerberos client support for claims, compound authentication and Kerberos armoring" must also be enabled to support Kerberos armoring. 
# 
# If you disable or do not configure this policy setting, the client computers in the domain enforce the use of Kerberos armoring when possible as supported by the target domain.
# 
Fail authentication requests when Kerberos armoring is not available:
  lgpo.set:
  - name: ClientRequireFast
  - setting: Enabled
  - policy_class: Machine
