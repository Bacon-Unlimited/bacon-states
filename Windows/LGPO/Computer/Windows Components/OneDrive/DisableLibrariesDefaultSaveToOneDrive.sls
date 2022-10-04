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
# LOCATION: \Computer\Windows Components\OneDrive\DisableLibrariesDefaultSaveToOneDrive.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_6_3only
#
# This policy setting lets you disable OneDrive as the default save location. It does not prevent apps and users from saving files on OneDrive. If you disable this policy setting, files will be saved locally by default. Users will still be able to change the value of this setting to save to OneDrive by default. They will also be able to open and save files on OneDrive using the OneDrive app and file picker, and Windows Store apps will still be able to access OneDrive using the WinRT API. If you enable or do not configure this policy setting, users with a connected account will save documents to OneDrive by default.
Save documents to OneDrive by default:
  lgpo.set:
  - name: DisableLibrariesDefaultSaveToOneDrive
  - setting: Enabled
  - policy_class: Machine
