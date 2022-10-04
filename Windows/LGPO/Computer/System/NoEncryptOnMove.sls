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
# LOCATION: \Computer\System\NoEncryptOnMove.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting prevents File Explorer from encrypting files that are moved to an encrypted folder.
# 
# If you enable this policy setting, File Explorer will not automatically encrypt files that are moved to an encrypted folder.
# 
# If you disable or do not configure this policy setting, File Explorer automatically encrypts files that are moved to an encrypted folder.
# 
# This setting applies only to files moved within a volume. When files are moved to other volumes, or if you create a new file in an encrypted folder, File Explorer encrypts those files automatically.
Do not automatically encrypt files moved to encrypted folders:
  lgpo.set:
  - name: NoEncryptOnMove
  - setting: Enabled
  - policy_class: Machine
