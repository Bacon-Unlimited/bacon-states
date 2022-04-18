# windows:SUPPORTED_WindowsVista
#
# This policy setting turns on or turns off an HTTP listener created for backward compatibility purposes in the Windows Remote Management (WinRM) service.
# 
#         If you enable this policy setting, the HTTP listener always appears.
# 
#         If you disable or do not configure this policy setting, the HTTP listener never appears.
# 
#         When certain port 80 listeners are migrated to WinRM 2.0, the listener port number changes to 5985.
# 
#         A listener might be automatically created on port 80 to ensure backward compatibility.
Turn On Compatibility HTTP Listener:
  lgpo.set:
  - name: HttpCompatibilityListener
  - setting: Enabled
  - policy_class: Machine
