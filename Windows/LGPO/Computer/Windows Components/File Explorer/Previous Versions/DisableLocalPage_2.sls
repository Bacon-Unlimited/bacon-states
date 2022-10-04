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
# LOCATION: \Computer\Windows Components\File Explorer\Previous Versions\DisableLocalPage_2.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_Vista_through_Win7
#
# This policy setting lets you hide the list of previous versions of files that are on local disks. The previous versions could come from the on-disk restore points or from backup media.
# 
# If you enable this policy setting, users cannot list or restore previous versions of files on local disks.
# 
# If you disable this policy setting, users cannot list and restore previous versions of files on local disks.
# 
# If you do not configure this policy setting, it defaults to disabled.
Hide previous versions list for local files:
  lgpo.set:
  - name: DisableLocalPage_2
  - setting: Enabled
  - policy_class: Machine
