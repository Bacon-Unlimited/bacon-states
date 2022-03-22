# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string.
# 
# If you enable this policy setting, only those users matching the security descriptor can access the log.
# 
# If you disable or do not configure this policy setting, all authenticated users and system services can write, read, or clear this log.
# 
# Note: If you enable this policy setting, some tools and APIs may ignore it. The same change should be made to the "Configure log access (legacy)" policy setting to enforce this change across all tools and APIs.
Configure log access:
  lgpo.set:
  - name: Channel_Log_FileLogAccess_1
  - setting:
      Channel_Log_FileLogAccess: text-placeholder
  - policy_class: Machine
