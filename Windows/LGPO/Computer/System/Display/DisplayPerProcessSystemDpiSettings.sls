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
# LOCATION: \Computer\System\Display\DisplayPerProcessSystemDpiSettings.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS4
#
# Per Process System DPI is an application compatibility feature for desktop applications that do not render properly after a display-scale factor (DPI) change. When the display scale factor of the primary display changes (which can happen when you connect or disconnect a display that has a different display scale factor (DPI), connect remotely from a device with a different display scale factor, or manually change the display scale factor), many desktop applications can display blurry. Desktop applications that have not been updated to display properly in this scenario will be blurry until the user logs out and back in to Windows. 
# 
# When you enable this policy some blurry applications will be crisp after they are restarted, without requiring the user to log out and back in to Windows. 
# 
# Be aware of the following:
# 
# Per Process System DPI will only improve the rendering of desktop applications that are positioned on the primary display. Some desktop applications can still be blurry on secondary displays that have different display scale factors. 
# 
# Per Process System DPI will not work for all applications as some older desktop applications will always be blurry on high DPI displays. 
# 
# In some cases, you may see some odd behavior in some desktop applications. If that happens, Per Process System DPI should be disabled.
# 
# Enabling this setting lets you specify the system-wide default for desktop applications as well as per-application overrides. If you disable or do not configure this setting, Per Process System DPI will not apply to any processes on the system.
# 
# 
Configure Per-Process System DPI settings:
  lgpo.set:
  - name: DisplayPerProcessSystemDpiSettings
  - setting:
      DisplayDisablePerProcessSystemDpiSettings: text-placeholder
      DisplayEnablePerProcessSystemDpiSettings: text-placeholder
      DisplayGlobalPerProcessSystemDpiSettings: enum-placeholder
  - policy_class: Machine
