# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string. You cannot configure write permissions for this log. You must set both "configure log access" policy settings for this log in order to affect the both modern and legacy tools.
# 
# If you enable this policy setting, only those users whose security descriptor matches the configured specified value can access the log.
# 
# If you disable or do not configure this policy setting, only system software and administrators can read or clear this log.
# 
# Note: If you enable this policy setting, some tools and APIs may ignore it. The same change should be made to the "Configure log access (legacy)" policy setting to enforce this change across all tools and APIs.
Configure log access:
  lgpo.set:
  - name: Channel_Log_FileLogAccess_2
  - setting:
      Channel_Log_FileLogAccess: text-placeholder
  - policy_class: Machine
