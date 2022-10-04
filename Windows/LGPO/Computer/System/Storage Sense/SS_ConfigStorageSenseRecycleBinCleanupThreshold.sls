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
# LOCATION: \Computer\System\Storage Sense\SS_ConfigStorageSenseRecycleBinCleanupThreshold.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORT_WINDOWS_10_0_RS6
#
# 
# When Storage Sense runs, it can delete files in the users Recycle Bin if they have been there for over a certain amount of days.
# 
# If the group policy "Allow Storage Sense" is disabled, then this policy does not have any effect.
# 
# Enabled:
# You must provide the minimum age threshold (in days) of a file in the Recycle Bin before Storage Sense will delete it. Supported values are: 0 - 365.
# If you set this value to zero, Storage Sense will not delete files in the users Recycle Bin. The default is 30 days.
# 
# Disabled or Not Configured:
# By default, Storage Sense will delete files in the users Recycle Bin that have been there for over 30 days. Users can configure this setting in Storage settings.
#     
Configure Storage Sense Recycle Bin cleanup threshold:
  lgpo.set:
  - name: SS_ConfigStorageSenseRecycleBinCleanupThreshold
  - setting:
      StorageSenseRecycleBinCleanupThreshold: decimal-placeholder
  - policy_class: Machine
