# windows:SUPPORTED_WindowsVista
#
# 
# Changes the behavior of IShellFolder::BindToObject for IID_IPropertySetStorage to not bind directly to the IPropertySetStorage implementation, and to include the intermediate layers provided by the Property System.  This behavior is consistent with Windows Vista's behavior in this scenario.
# 
# This disables access to user-defined properties, and properties stored in NTFS secondary streams.
#       
Disable binding directly to IPropertySetStorage without intermediate layers.:
  lgpo.set:
  - name: DisableBindDirectlyToPropertySetStorage
  - setting: Enabled
  - policy_class: User
