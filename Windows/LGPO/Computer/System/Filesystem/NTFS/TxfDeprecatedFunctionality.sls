# windows:SUPPORTED_Windows8
#
# TXF deprecated features included savepoints, secondary RM, miniversion and roll forward. Please enable it if you want to use the APIs.
Enable / disable TXF deprecated features:
  lgpo.set:
  - name: TxfDeprecatedFunctionality
  - setting: Enabled
  - policy_class: Machine
