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
# LOCATION: \Computer\System\Remote Assistance\RA_Optimize_Bandwidth.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to improve performance in low bandwidth scenarios.
# 
# This setting is incrementally scaled from "No optimization" to "Full optimization".  Each incremental setting includes the previous optimization setting.
# 
# For example:
# 
# "Turn off background" will include the following optimizations:
# -No full window drag
# -Turn off background
# 
# "Full optimization" will include the following optimizations:
# -Use 16-bit color (8-bit color in Windows Vista)
# -Turn off font smoothing (not supported in Windows Vista)
# -No full window drag
# -Turn off background
# 
# If you enable this policy setting, bandwidth optimization occurs at the level specified.
# 
# If you disable this policy setting, application-based settings are used.
# 
# If you do not configure this policy setting, application-based settings are used.
Turn on bandwidth optimization:
  lgpo.set:
  - name: RA_Optimize_Bandwidth
  - setting:
      RA_Optimize_Bandwidth_List: enum-placeholder
  - policy_class: Machine
