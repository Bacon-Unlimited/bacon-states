# windows:SUPPORTED_WindowsPreVista
#
# Removes most occurrences of the My Documents icon.
# 
# This setting removes the My Documents icon from the desktop, from File Explorer, from programs that use the File Explorer windows, and from the standard Open dialog box.
# 
# This setting does not prevent the user from using other methods to gain access to the contents of the My Documents folder.
# 
# This setting does not remove the My Documents icon from the Start menu. To do so, use the "Remove My Documents icon from Start Menu" setting.
# 
# Note: To make changes to this setting effective, you must log off from and log back on to Windows 2000 Professional.
Remove My Documents icon on the desktop:
  lgpo.set:
  - name: NoMyDocumentsIcon
  - setting: Enabled
  - policy_class: User
