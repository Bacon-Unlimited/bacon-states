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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Scan\Scan_PurgeItemsAfterDelay.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting defines the number of days items should be kept in the scan history folder before being permanently removed. The value represents the number of days to keep items in the folder. If set to zero, items will be kept forever and will not be automatically removed. By default, the value is set to 30 days.
# 
#     If you enable this setting, items will be removed from the scan history folder after the number of days specified.
# 
#     If you disable or do not configure this setting, items will be kept in the scan history folder for the default number of days.
Turn on removal of items from scan history folder:
  lgpo.set:
  - name: Scan_PurgeItemsAfterDelay
  - setting:
      Scan_PurgeItemsAfterDelay: decimal-placeholder
  - policy_class: Machine
