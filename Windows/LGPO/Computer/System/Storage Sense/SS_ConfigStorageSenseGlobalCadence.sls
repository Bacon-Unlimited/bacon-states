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
# LOCATION: \Computer\System\Storage Sense\SS_ConfigStorageSenseGlobalCadence.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORT_WINDOWS_10_0_RS6
#
# 
# Storage Sense can automatically clean some of the users files to free up disk space.
# 
# If the group policy "Allow Storage Sense" is disabled, then this policy does not have any effect.
# 
# Enabled:
# You must provide the desired Storage Sense cadence. Supported options are: daily, weekly, monthly, and during low free disk space. The default is 0 (during low free disk space).
# 
# Disabled or Not Configured:
# By default, the Storage Sense cadence is set to during low free disk space. Users can configure this setting in Storage settings.
#     
Configure Storage Sense cadence:
  lgpo.set:
  - name: SS_ConfigStorageSenseGlobalCadence
  - setting:
      StorageSenseGlobalCadence: enum-placeholder
  - policy_class: Machine
