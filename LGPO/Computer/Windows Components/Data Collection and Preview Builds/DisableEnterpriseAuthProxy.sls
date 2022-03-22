# windows:SUPPORTED_Windows_10_0
#
# This policy setting blocks the Connected User Experience and Telemetry service from automatically using an authenticated proxy to send data back to Microsoft on Windows 10. If you disable or do not configure this policy setting, the Connected User Experience and Telemetry service will automatically use an authenticated proxy to send data back to Microsoft. Enabling this policy will block the Connected User Experience and Telemetry service from automatically using an authenticated proxy.
Configure Authenticated Proxy usage for the Connected User Experience and Telemetry service:
  lgpo.set:
  - name: DisableEnterpriseAuthProxy
  - setting:
      DisableEnterpriseAuthProxy: enum-placeholder
  - policy_class: Machine
