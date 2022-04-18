# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to turn on the ability for applications and services to prevent the system from sleeping.
# 
# If you enable this policy setting, an application or service may prevent the system from sleeping (Hybrid Sleep, Stand By, or Hibernate).
# 
# If you disable or do not configure this policy setting, users control this setting.
Turn on the ability for applications to prevent sleep transitions (on battery):
  lgpo.set:
  - name: DCCriticalSleepTransitionsDisable_2
  - setting: Enabled
  - policy_class: Machine
