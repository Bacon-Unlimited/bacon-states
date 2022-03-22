# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to improve performance in low bandwidth scenarios.
# 
# This setting is incrementally scaled from "No optimization" to "Full optimization".  Each incremental setting includes the previous optimization setting.
# 
# For example:
# 
# "Turn off background" will include the following optimizations:
# -No full window drag
# -Turn off background
# 
# "Full optimization" will include the following optimizations:
# -Use 16-bit color (8-bit color in Windows Vista)
# -Turn off font smoothing (not supported in Windows Vista)
# -No full window drag
# -Turn off background
# 
# If you enable this policy setting, bandwidth optimization occurs at the level specified.
# 
# If you disable this policy setting, application-based settings are used.
# 
# If you do not configure this policy setting, application-based settings are used.
Turn on bandwidth optimization:
  lgpo.set:
  - name: RA_Optimize_Bandwidth
  - setting:
      RA_Optimize_Bandwidth_List: enum-placeholder
  - policy_class: Machine
