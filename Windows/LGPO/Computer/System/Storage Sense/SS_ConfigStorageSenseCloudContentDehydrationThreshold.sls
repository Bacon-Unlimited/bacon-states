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
# LOCATION: \Computer\System\Storage Sense\SS_ConfigStorageSenseCloudContentDehydrationThreshold.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORT_WINDOWS_10_0_RS6
#
# 
# When Storage Sense runs, it can dehydrate cloud-backed content that hasnt been opened in a certain amount of days.
# 
# If the group policy "Allow Storage Sense" is disabled, then this policy does not have any effect.
# 
# Enabled:
# You must provide the minimum number of days a cloud-backed file can remain unopened before Storage Sense dehydrates it from the sync root. Supported values are: 0 - 365.
# If you set this value to zero, Storage Sense will not dehydrate any cloud-backed content. The default value is 0, or never dehydrating cloud-backed content.
# 
# Disabled or Not Configured:
# By default, Storage Sense will not dehydrate any cloud-backed content. Users can configure this setting in Storage settings.
#     
Configure Storage Sense Cloud Content dehydration threshold:
  lgpo.set:
  - name: SS_ConfigStorageSenseCloudContentDehydrationThreshold
  - setting:
      StorageSenseCloudContentDehydrationThreshold: decimal-placeholder
  - policy_class: Machine
