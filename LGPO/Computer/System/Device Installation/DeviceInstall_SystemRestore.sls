# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to prevent Windows from creating a system restore point during device activity that would normally prompt Windows to create a system restore point. Windows normally creates restore points for certain driver activity, such as the installation of an unsigned driver. A system restore point enables you to more easily restore your system to its state before the activity. 
# 
# If you enable this policy setting, Windows does not create a system restore point when one would normally be created.
# 
# If you disable or do not configure this policy setting, Windows creates a system restore point as it normally would.
Prevent creation of a system restore point during device activity that would normally prompt creation of a restore point:
  lgpo.set:
  - name: DeviceInstall_SystemRestore
  - setting: Enabled
  - policy_class: Machine
