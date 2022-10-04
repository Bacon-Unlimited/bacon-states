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
# LOCATION: \User\Start Menu and Taskbar\DisableGlobalSearchOnAppsView.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3only
#
# This policy setting prevents the user from searching apps, files, settings (and the web if enabled) when the user searches from the Apps view.
# 
# This policy setting is only applied when the Apps view is set as the default view for Start.
# 
# If you enable this policy setting, searching from the Apps view will only search the list of installed apps.
# 
# If you disable or dont configure this policy setting, the user can configure this setting.
Search just apps from the Apps view:
  lgpo.set:
  - name: DisableGlobalSearchOnAppsView
  - setting: Enabled
  - policy_class: User
