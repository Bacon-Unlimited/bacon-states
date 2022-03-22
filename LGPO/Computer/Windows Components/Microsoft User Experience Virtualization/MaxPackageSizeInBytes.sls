# windows:SUPPORTED_Windows7
#
# This policy setting allows you to configure the UE-V Agent to write a warning event to the event log when a settings package file size reaches a defined threshold. By default the UE-V Agent does not report information about package file size. 
# If you enable this policy setting, specify the threshold file size in bytes. When the settings package file exceeds this threshold the UE-V Agent will write a warning event to the event log.
# If you disable or do not configure this policy setting, no event is written to the event log to report settings package size.
#       
Settings package size warning threshold:
  lgpo.set:
  - name: MaxPackageSizeInBytes
  - setting:
      MaxPackageSizeInBytes: decimal-placeholder
  - policy_class: Machine
