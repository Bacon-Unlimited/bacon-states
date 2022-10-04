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
# LOCATION: \User\Windows Components\App runtime\AppxRuntimeBlockFileElevation.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting lets you control whether Windows Store apps can open files using the default desktop app for a file type. Because desktop apps run at a higher integrity level than Windows Store apps, there is a risk that a Windows Store app might compromise the system by opening a file in the default desktop app for a file type.
# 
# If you enable this policy setting, Windows Store apps cannot open files in the default desktop app for a file type; they can open files only in other Windows Store apps.
# 
# If you disable or do not configure this policy setting, Windows Store apps can open files in the default desktop app for a file type.
Block launching desktop apps associated with a file.:
  lgpo.set:
  - name: AppxRuntimeBlockFileElevation
  - setting: Enabled
  - policy_class: User
