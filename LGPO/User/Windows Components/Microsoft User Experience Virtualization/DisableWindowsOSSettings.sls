# windows:SUPPORTED_Windows7
#
# 
# This policy setting configures the synchronization of Windows settings between computers.
# Certain Windows settings will synchronize between computers by default. These settings include Windows themes, Windows desktop settings, Ease of Access settings, and network printers. Use this policy setting to specify which Windows settings synchronize between computers. You can also use these settings to enable synchronization of users' sign-in information for certain apps, networks, and certificates.
# If you enable this policy setting, only the selected Windows settings synchronize. Unselected Windows settings are excluded from settings synchronization.
# If you disable this policy setting, all Windows Settings are excluded from the settings synchronization.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Synchronize Windows settings:
  lgpo.set:
  - name: DisableWindowsOSSettings
  - setting:
      DesktopSettings: boolean-placeholder
      EaseOfAccessSettings: boolean-placeholder
      NetworkPrinters: boolean-placeholder
      RoamingCredentialSettings: boolean-placeholder
      ThemeSettings: boolean-placeholder
  - policy_class: User
