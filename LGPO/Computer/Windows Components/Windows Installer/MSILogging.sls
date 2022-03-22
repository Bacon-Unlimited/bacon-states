# windows:SUPPORTED_Win2k
#
# 
#         Specifies the types of events that Windows Installer records in its transaction log for each installation. The log, Msi.log, appears in the Temp directory of the system volume.
# 
#         When you enable this policy setting, you can specify the types of events you want Windows Installer to record. To indicate that an event type is recorded, type the letter representing the event type. You can type the letters in any order and list as many or as few event types as you want.
# 
#         To disable logging, delete all of the letters from the box.
# 
#         If you disable or do not configure this policy setting, Windows Installer logs the default event types, represented by the letters "iweap."
Specify the types of events Windows Installer records in its transaction log:
  lgpo.set:
  - name: MSILogging
  - setting:
      MSILogging: text-placeholder
  - policy_class: Machine
