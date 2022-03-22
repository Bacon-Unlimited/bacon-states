# windows:SUPPORTED_Windows7
#
# Disabling data execution prevention can allow certain legacy plug-in applications to function without terminating Explorer.
Turn off Data Execution Prevention for Explorer:
  lgpo.set:
  - name: NoDataExecutionPrevention
  - setting: Enabled
  - policy_class: Machine
