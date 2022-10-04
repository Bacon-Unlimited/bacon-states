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
# LOCATION: \Computer\Windows Components\File Explorer\Previous Versions\DisableRemoteRestore_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This setting lets you suppress the Restore button in the previous versions property page when the user has selected a previous version of a file on a file share.
# 
# If you enable this policy setting, the Restore button is disabled when the user selects a previous version corresponding to a file on a file share.
# 
# If you disable this policy setting, the Restore button remains active for a previous version corresponding to a file on a file share. If the user clicks the Restore button, Windows attempts to restore the file from the file share.
# 
# If you do not configure this policy setting, it is disabled by default. The Restore button is active when the previous version is of a file on a file share.
Prevent restoring remote previous versions:
  lgpo.set:
  - name: DisableRemoteRestore_2
  - setting: Enabled
  - policy_class: Machine
