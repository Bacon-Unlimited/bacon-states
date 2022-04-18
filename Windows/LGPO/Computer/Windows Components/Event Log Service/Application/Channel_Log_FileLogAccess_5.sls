# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string. You must set both "configure log access" policy settings for this log in order to affect the both modern and legacy tools.
# 
# If you enable this policy setting, only those users matching the security descriptor can access the log.
# 
# If you disable this policy setting, all authenticated users and system services can write, read, or clear this log.
# 
# If you do not configure this policy setting, the previous policy setting configuration remains in effect.
Configure log access (legacy):
  lgpo.set:
  - name: Channel_Log_FileLogAccess_5
  - setting:
      Channel_Log_FileLogAccess: text-placeholder
  - policy_class: Machine
