# SUPPORTED_WIN7
#
# This policy setting allows you to set the default value of the SourcePath parameter on the Update-Help cmdlet.
# 
# If you enable this policy setting, the Update-Help cmdlet will use the specified value as the default value for the SourcePath parameter. This default value can be overridden by specifying a different value with the SourcePath parameter on the Update-Help cmdlet.
# 
# If this policy setting is disabled or not configured, this policy setting does not set a default value for the SourcePath parameter of the Update-Help cmdlet.
# 
# Note: This policy setting exists under both Computer Configuration and User Configuration in the Group Policy Editor. The Computer Configuration policy setting takes precedence over the User Configuration policy setting.
#       
Set the default source path for Update-Help:
  lgpo.set:
  - name: EnableUpdateHelpDefaultSourcePath
  - setting:
      SourcePathForUpdateHelp: text-placeholder
  - policy_class: User
