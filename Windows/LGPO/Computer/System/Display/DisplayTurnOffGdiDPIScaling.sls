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
# LOCATION: \Computer\System\Display\DisplayTurnOffGdiDPIScaling.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS2
#
# GDI DPI Scaling enables applications that are not DPI aware to become per monitor DPI aware.
# 
# This policy setting lets you specify legacy applications that have GDI DPI Scaling turned off.
# 
# If you enable this policy setting, GDI DPI Scaling is turned off for all applications in the list, even if they are enabled by using ApplicationCompatibility database, ApplicationCompatibility UI System (Enhanced) setting, or an application manifest.
# 
# If you disable or do not configure this policy setting, GDI DPI Scaling might still be turned on for legacy applications.
# 
# If GDI DPI Scaling is configured to both turn off and turn on an application, the application will be turned off.
Turn off GdiDPIScaling for applications:
  lgpo.set:
  - name: DisplayTurnOffGdiDPIScaling
  - setting:
      DisplayTurnOffGdiDPIScalingPrompt: text-placeholder
  - policy_class: Machine
