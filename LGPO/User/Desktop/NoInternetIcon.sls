# windows:SUPPORTED_Win2k
#
# Removes the Internet Explorer icon from the desktop and from the Quick Launch bar on the taskbar.
# 
# This setting does not prevent the user from starting Internet Explorer by using other methods.
Hide Internet Explorer icon on desktop:
  lgpo.set:
  - name: NoInternetIcon
  - setting: Enabled
  - policy_class: User
