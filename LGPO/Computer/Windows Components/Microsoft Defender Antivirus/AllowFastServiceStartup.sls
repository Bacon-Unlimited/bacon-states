# windows:SUPPORTED_Windows8
#
# This policy setting controls the load priority for the antimalware service. Increasing the load priority will allow for faster service startup, but may impact performance.
# 
#     If you enable or do not configure this setting, the antimalware service will load as a normal priority task.
# 
#     If you disable this setting, the antimalware service will load as a low priority task.
Allow antimalware service to startup with normal priority:
  lgpo.set:
  - name: AllowFastServiceStartup
  - setting: Enabled
  - policy_class: Machine
