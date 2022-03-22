# windows:SUPPORTED_Windows_10_0_NOSERVER_ENTERPRISE_EDUCATION
#
# This policy setting allows you to decide whether auditing events can be collected from Microsoft Defender Application Guard.
# 
# If you enable this setting, Application Guard inherits auditing policies from your device and logs system events from the Application Guard container to your host.
# 
# If you disable or don't configure this setting, event logs aren't collected from your Application Guard container.
#         
Allow auditing events in Microsoft Defender Application Guard:
  lgpo.set:
  - name: AppHVSI_AuditApplicationGuardConfig
  - setting: Enabled
  - policy_class: Machine
