# windows:SUPPORTED_WindowsPreVista
#
# Removes Active Desktop content and prevents users from adding Active Desktop content. 
# 
# This setting removes all Active Desktop items from the desktop. It also removes the Web tab from Display in Control Panel. As a result, users cannot add Web pages or  pictures from the Internet or an intranet to the desktop.
# 
# Note: This setting does not disable Active Desktop. Users can  still use image formats, such as JPEG and GIF, for their desktop wallpaper.
Disable all items:
  lgpo.set:
  - name: sz_ATC_NoComponents
  - setting: Enabled
  - policy_class: User
