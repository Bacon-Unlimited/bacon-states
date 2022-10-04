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
# LOCATION: \Computer\Windows Components\Microsoft User Experience Virtualization\Applications\MicrosoftOffice2013OneNoteBackup.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# 
# This policy setting configures the backup of certain user settings for Microsoft OneNote 2013.
# Microsoft OneNote 2013 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft OneNote 2013 settings.
# If you enable this policy setting, certain user settings of Microsoft OneNote 2013 will continue to be backed up.
# If you disable this policy setting, certain user settings of Microsoft OneNote 2013 will not be backed up.
# If you do not configure this policy setting, any defined values will be deleted.
#       
OneNote 2013 backup only:
  lgpo.set:
  - name: MicrosoftOffice2013OneNoteBackup
  - setting: Enabled
  - policy_class: Machine
