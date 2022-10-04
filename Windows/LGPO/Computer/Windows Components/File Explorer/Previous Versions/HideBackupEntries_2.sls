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
# LOCATION: \Computer\Windows Components\File Explorer\Previous Versions\HideBackupEntries_2.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_Vista_through_Win7
#
# This policy setting lets you hide entries in the list of previous versions of a file in which the previous version is located on backup media. Previous versions can come from the on-disk restore points or the backup media.
# 
# If you enable this policy setting, users cannot see any previous versions corresponding to backup copies, and can see only previous versions corresponding to on-disk restore points.
# 
# If you disable this policy setting, users can see previous versions corresponding to backup copies as well as previous versions corresponding to on-disk restore points.
# 
# If you do not configure this policy setting, it is disabled by default.
Hide previous versions of files on backup location:
  lgpo.set:
  - name: HideBackupEntries_2
  - setting: Enabled
  - policy_class: Machine
