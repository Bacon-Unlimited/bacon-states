# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure whether or not Watson events are sent.
# 
#     If you enable or do not configure this setting, Watson events will be sent.
# 
#     If you disable this setting, Watson events will not be sent.
Configure Watson events:
  lgpo.set:
  - name: Reporting_DisablegenericrePorts
  - setting: Enabled
  - policy_class: Machine
