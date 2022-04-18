# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string. You cannot configure write permissions for this log.
# 
# If you enable this policy setting, only those users whose security descriptor matches the configured specified value can access the log.
# 
# If you disable this policy setting, only system software and administrators can read or clear this log.
# 
# If you do not configure this policy setting, the previous policy setting configuration remains in effect.
Configure log access (legacy):
  lgpo.set:
  - name: Channel_Log_FileLogAccess_6
  - setting:
      Channel_Log_FileLogAccess: text-placeholder
  - policy_class: Machine
