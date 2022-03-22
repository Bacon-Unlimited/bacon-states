# windows:SUPPORTED_Windows7
#
# This policy setting specifies the number of seconds a pending fast user switch event will remain active before the switch is initiated.  By default, a fast user switch event is active for 10 seconds before becoming inactive.
# 
# If you enable this policy setting, you can configure the fast user switch event timeout to specify the number of seconds the event remains active. This value cannot exceed 60 seconds.
# 
# If you disable or do not configure this policy setting, a default value of 10 seconds is used for fast-user switch event timeouts.
# 
Specify timeout for fast user switching events:
  lgpo.set:
  - name: Biometrics_FUSTimeout
  - setting:
      Pol_Biometrics_FUSTimeout: decimal-placeholder
  - policy_class: Machine
