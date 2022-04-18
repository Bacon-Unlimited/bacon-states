# windows:SUPPORTED_WindowsXP
#
# This policy setting determines when retries are no longer allowed for applications that perform periodic searches for domain controllers (DC) are unable to find a DC. For example, retires may be set to occur according to the Use maximum DC discovery retry interval policy setting, but when the value set in this policy setting is reached, no more retries occur. If a value for this policy setting is smaller than the value in the Use maximum DC discovery retry interval policy setting, the value for Use maximum DC discovery retry interval policy setting is used.
# 
# The default value for this setting is to not quit retrying (0). The maximum value for this setting is 49 days (0x49*24*60*60=4233600). The minimum value for this setting is 0.
# 
# Warning: If the value for this setting is too small, a client will stop trying to find a DC too soon.
Use final DC discovery retry setting for background callers:
  lgpo.set:
  - name: Netlogon_BackgroundRetryQuitTime
  - setting:
      Netlogon_BackgroundRetryQuitTimeLabel: decimal-placeholder
  - policy_class: Machine
