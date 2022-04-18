# windows:SUPPORTED_WindowsVista
#
# Disabling heap termination on corruption can allow certain legacy plug-in applications to function without terminating Explorer immediately, although Explorer may still terminate unexpectedly later.
Turn off heap termination on corruption:
  lgpo.set:
  - name: NoHeapTerminationOnCorruption
  - setting: Enabled
  - policy_class: Machine
