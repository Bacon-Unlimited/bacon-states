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
# LOCATION: \Computer\System\Filesystem\NTFS\ShortNameCreationSettings.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# These settings provide control over whether or not short names are generated during file creation.  Some applications require short names for compatibility, but short names have a negative performance impact on the system.
# 
# If you enable short names on all volumes then short names will always be generated.  If you disable them on all volumes then they will never be generated.  If you set short name creation to be configurable on a per volume basis then an on-disk flag will determine whether or not short names are created on a given volume.  If you disable short name creation on all data volumes then short names will only be generated for files created on the system volume.
Short name creation options:
  lgpo.set:
  - name: ShortNameCreationSettings
  - setting:
      ShortNameCreationSetting_Levels: enum-placeholder
  - policy_class: Machine
