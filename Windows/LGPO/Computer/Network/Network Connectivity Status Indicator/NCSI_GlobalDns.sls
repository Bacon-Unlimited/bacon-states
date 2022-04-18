# windows:SUPPORTED_Windows_10_0_RS3
#
# This policy setting enables you to specify DNS binding behavior. NCSI by default will restrict DNS lookups to the interface it is currently probing on. If you enable this setting, NCSI will allow the DNS lookups to happen on any interface.
Specify global DNS:
  lgpo.set:
  - name: NCSI_GlobalDns
  - setting:
      NCSI_UseGlobalDns_Checkbox: boolean-placeholder
  - policy_class: Machine
