# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure whether or not the antimalware service remains running when antivirus and antispyware security intelligence is disabled. It is recommended that this setting remain disabled.
# 
#     If you enable this setting, the antimalware service will always remain running even if both antivirus and antispyware security intelligence is disabled.
# 
#     If you disable or do not configure this setting, the antimalware service will be stopped when both antivirus and antispyware security intelligence is disabled. If the computer is restarted, the service will be started if it is set to Automatic startup. After the service has started, there will be a check to see if antivirus and antispyware security intelligence is enabled. If at least one is enabled, the service will remain running. If both are disabled, the service will be stopped.
Allow antimalware service to remain running always:
  lgpo.set:
  - name: ServiceKeepAlive
  - setting: Enabled
  - policy_class: Machine
