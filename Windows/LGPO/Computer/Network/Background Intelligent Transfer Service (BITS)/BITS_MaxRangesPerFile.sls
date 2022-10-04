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
# LOCATION: \Computer\Network\Background Intelligent Transfer Service (BITS)\BITS_MaxRangesPerFile.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting limits the number of ranges that can be added to a file in a BITS job. By default, files in a BITS job are limited to 500 ranges per file. You can use this setting to raise or lower the maximum number ranges per file.
# 
#           If you enable this policy setting, BITS will limit the maximum number of ranges that can be added to a file to the specified number.
# 
#           If you disable or do not configure this policy setting, BITS will limit ranges to 500 ranges per file.
# 
#           Note: BITS Jobs created by services and the local administrator account do not count toward this limit.
Limit the maximum number of ranges that can be added to the file in a BITS job:
  lgpo.set:
  - name: BITS_MaxRangesPerFile
  - setting:
      BITS_MaxRangesPerFileList: decimal-placeholder
  - policy_class: Machine
