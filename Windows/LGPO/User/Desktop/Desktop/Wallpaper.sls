# windows:SUPPORTED_Win2k
#
# Specifies the desktop background ("wallpaper") displayed on all users' desktops.
# 
# This setting lets you specify the wallpaper on users' desktops and prevents users from changing the image or its presentation. The wallpaper you specify can be stored in a bitmap (*.bmp) or JPEG (*.jpg) file.
# 
# To use this setting, type the fully qualified path and name of the file that stores the wallpaper image. You can type a local path, such as C:\Windows\web\wallpaper\home.jpg or a UNC path, such as \\Server\Share\Corp.jpg. If the specified file is not available when the user logs on, no wallpaper is displayed. Users cannot specify alternative wallpaper. You can also use this setting to specify that the wallpaper image be centered, tiled, or stretched. Users cannot change this specification.
# 
# If you disable this setting or do not configure it, no wallpaper is displayed. However, users can select the wallpaper of their choice.
# 
# Also, see the "Allow only bitmapped wallpaper" in the same location, and the "Prevent changing wallpaper" setting in User Configuration\Administrative Templates\Control Panel.
# 
# Note: This setting does not apply to remote desktop server sessions.
Desktop Wallpaper:
  lgpo.set:
  - name: Wallpaper
  - setting:
      WallpaperName: text-placeholder
      WallpaperStyle: enum-placeholder
  - policy_class: User
