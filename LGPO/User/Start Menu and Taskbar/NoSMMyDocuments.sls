# windows:SUPPORTED_Windows7To2k
#
# This policy setting allows you to remove the Documents icon from the Start menu and its submenus.
# 
# If you enable this policy setting, the Documents icon is removed from the Start menu and its submenus. Enabling this policy setting only removes the icon. It does not prevent the user from using other methods to gain access to the contents of the Documents folder.
# 
# Note: To make changes to this policy setting effective, you must log off and then log on.
# 
# If you disable or do not configure this policy setting, he Documents icon is available from the Start menu.
# 
# Also, see the "Remove Documents icon on the desktop" policy setting.
Remove Documents icon from Start Menu:
  lgpo.set:
  - name: NoSMMyDocuments
  - setting: Enabled
  - policy_class: User
