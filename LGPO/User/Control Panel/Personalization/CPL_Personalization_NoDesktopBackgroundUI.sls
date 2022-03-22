# windows:SUPPORTED_Win2k
#
# Prevents users from adding or changing the background design of the desktop.
# 
# By default, users can use the Desktop Background page in the Personalization or Display Control Panel to add a background design (wallpaper) to their desktop.
# 
# If you enable this setting, none of the Desktop Background settings can be changed by the user.
# 
# To specify wallpaper for a group, use the "Desktop Wallpaper" setting.
# 
# Note: You must also enable the "Desktop Wallpaper" setting to prevent users from changing the desktop wallpaper. Refer to KB article: Q327998 for more information.
# 
# Also, see the "Allow only bitmapped wallpaper" setting.
Prevent changing desktop background:
  lgpo.set:
  - name: CPL_Personalization_NoDesktopBackgroundUI
  - setting: Enabled
  - policy_class: User
