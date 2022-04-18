# windows:SUPPORTED_Windows7
#
# This policy setting enables the User Experience Virtualization (UE-V) tray icon. By default, an icon appears in the system tray that displays notifications for UE-V.  This icon also provides a link to the UE-V Agent application, Company Settings Center.  Users can open the Company Settings Center by right-clicking the icon and selecting Open or by double-clicking the icon. When this group policy setting is enabled, the UE-V tray icon is visible, the UE-V notifications display, and the Company Settings Center is accessible from the tray icon.
# With this setting disabled, the tray icon does not appear in the system tray, UE-V never displays notifications, and the user cannot access Company Settings Center from the system tray. The Company Settings Center remains accessible through the Control Panel and the Start menu or Start screen.
# If you do not configure this policy setting, any defined values are deleted.
#       
Tray Icon:
  lgpo.set:
  - name: TrayIconEnabled
  - setting: Enabled
  - policy_class: Machine
