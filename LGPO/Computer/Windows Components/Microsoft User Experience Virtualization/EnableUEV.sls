# windows:SUPPORTED_Windows_10_0_NOARM
#
# This policy setting allows you to enable or disable User Experience Virtualization (UE-V) feature. Reboot is needed for enable to take effect. With Auto-register inbox templates enabled, the UE-V inbox templates such as Office 2016 will be automatically registered when the UE-V Service is enabled. If this option is changed, it will only take effect when UE-V service is re-enabled.
Enable UEV:
  lgpo.set:
  - name: EnableUEV
  - setting:
      RegisterInboxTemplates: boolean-placeholder
  - policy_class: Machine
