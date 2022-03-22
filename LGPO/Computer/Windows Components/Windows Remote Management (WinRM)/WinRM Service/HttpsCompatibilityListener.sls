# windows:SUPPORTED_WindowsVista
#
# This policy setting turns on or turns off an HTTPS listener created for backward compatibility purposes in the Windows Remote Management (WinRM) service.
# 
#         If you enable this policy setting, the HTTPS listener always appears.
# 
#         If you disable or do not configure this policy setting, the HTTPS listener never appears.
# 
#         When certain port 443 listeners are migrated to WinRM 2.0, the listener port number changes to 5986.
# 
#         A listener might be automatically created on port 443 to ensure backward compatibility.
Turn On Compatibility HTTPS Listener:
  lgpo.set:
  - name: HttpsCompatibilityListener
  - setting: Enabled
  - policy_class: Machine
