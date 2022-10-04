####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \User\Desktop\Desktop\sz_DWP_NoHTMLPaper.sls
#
# SUPPORTED WINDOWS OS
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
