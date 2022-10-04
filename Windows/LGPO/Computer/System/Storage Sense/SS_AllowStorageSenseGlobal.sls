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
# LOCATION: \Computer\System\Storage Sense\SS_AllowStorageSenseGlobal.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORT_WINDOWS_10_0_RS6
#
# 
# Storage Sense can automatically clean some of the users files to free up disk space. By default, Storage Sense is automatically turned on when the machine runs into low disk space and is set to run whenever the machine runs into storage pressure. This cadence can be changed in Storage settings or set with the "Configure Storage Sense cadence" group policy.
# 
# Enabled:
# Storage Sense is turned on for the machine, with the default cadence as during low free disk space. Users cannot disable Storage Sense, but they can adjust the cadence (unless you also configure the "Configure Storage Sense cadence" group policy).
# 
# Disabled:
# Storage Sense is turned off the machine. Users cannot enable Storage Sense.
# 
# Not Configured:
# By default, Storage Sense is turned off until the user runs into low disk space or the user enables it manually. Users can configure this setting in Storage settings.
#     
Allow Storage Sense:
  lgpo.set:
  - name: SS_AllowStorageSenseGlobal
  - setting: Enabled
  - policy_class: Machine
