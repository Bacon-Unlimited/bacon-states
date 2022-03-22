# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to determine whether members of the Administrators group can install and update the drivers for any device, regardless of other policy settings.
# 
# If you enable this policy setting, members of the Administrators group can use the Add Hardware wizard or the Update Driver wizard to install and update the drivers for any device. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.
# 
# If you disable or do not configure this policy setting, members of the Administrators group are subject to all policy settings that restrict device installation.
Allow administrators to override Device Installation Restriction policies:
  lgpo.set:
  - name: DeviceInstall_AllowAdminInstall
  - setting: Enabled
  - policy_class: Machine
