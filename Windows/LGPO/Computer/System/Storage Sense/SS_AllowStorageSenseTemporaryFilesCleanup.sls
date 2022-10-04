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
# LOCATION: \Computer\System\Storage Sense\SS_AllowStorageSenseTemporaryFilesCleanup.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORT_WINDOWS_10_0_RS6
#
# 
# When Storage Sense runs, it can delete the users temporary files that are not in use.
# 
# If the group policy "Allow Storage Sense" is disabled, then this policy does not have any effect.
# 
# Enabled:
# Storage Sense will delete the users temporary files that are not in use. Users cannot disable this setting in Storage settings.
# 
# Disabled:
# Storage Sense will not delete the users temporary files. Users cannot enable this setting in Storage settings.
# 
# Not Configured:
# By default, Storage Sense will delete the users temporary files. Users can configure this setting in Storage settings.
#     
Allow Storage Sense Temporary Files cleanup:
  lgpo.set:
  - name: SS_AllowStorageSenseTemporaryFilesCleanup
  - setting: Enabled
  - policy_class: Machine
