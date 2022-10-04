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
# LOCATION: \Computer\Windows Components\App Package Deployment\RestrictAppDataToSystemVolume.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3_Update2
#
# 
#         Prevent users' app data from moving to another location when an app is moved or installed on another location.
# 
#         If you enable this setting, all users' app data will stay on the system volume, regardless of where the app is installed.
# 
#         If you disable or do not configure this setting, then when an app is moved to a different volume, the users' app data will also move to this volume.
#       
Prevent users' app data from being stored on non-system volumes:
  lgpo.set:
  - name: RestrictAppDataToSystemVolume
  - setting: Enabled
  - policy_class: Machine
