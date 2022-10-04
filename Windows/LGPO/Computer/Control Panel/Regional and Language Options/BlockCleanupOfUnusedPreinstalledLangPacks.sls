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
# LOCATION: \Computer\Control Panel\Regional and Language Options\BlockCleanupOfUnusedPreinstalledLangPacks.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# 
#           This policy setting controls whether the LPRemove task will run to clean up language packs installed on a machine but are not used by any users on that machine.
# 
#           If you enable this policy setting, language packs that are installed as part of the system image will remain installed even if they are not used by any user on that system.
# 
#           If you disable or do not configure this policy setting, language packs that are installed as part of the system image but are not used by any user on that system will be removed as part of a scheduled clean up task.
#       
Block clean-up of unused language packs:
  lgpo.set:
  - name: BlockCleanupOfUnusedPreinstalledLangPacks
  - setting: Enabled
  - policy_class: Machine
