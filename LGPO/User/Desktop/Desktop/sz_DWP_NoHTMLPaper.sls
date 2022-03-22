# windows:SUPPORTED_WindowsPreVista
#
# Permits only bitmap images for wallpaper. This setting limits the desktop background ("wallpaper") to bitmap (.bmp) files. If users select files with other image formats, such as JPEG, GIF, PNG, or HTML, through the Browse button on the Desktop tab, the wallpaper does not load. Files that are autoconverted to a .bmp format, such as JPEG, GIF, and PNG, can be set as Wallpaper by right-clicking the image and selecting "Set as Wallpaper".
# 
# Also, see the "Desktop Wallpaper" and the "Prevent changing wallpaper" (in User Configuration\Administrative Templates\Control Panel\Display) settings.
Allow only bitmapped wallpaper:
  lgpo.set:
  - name: sz_DWP_NoHTMLPaper
  - setting: Enabled
  - policy_class: User
