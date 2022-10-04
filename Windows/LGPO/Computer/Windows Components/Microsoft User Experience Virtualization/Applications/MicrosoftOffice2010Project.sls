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
# LOCATION: \Computer\Windows Components\Microsoft User Experience Virtualization\Applications\MicrosoftOffice2010Project.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting configures the synchronization of user settings for Microsoft Project 2010.
# By default, the user settings of Microsoft Project 2010 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Project 2010 from synchronization between computers.
# If you enable this policy setting, Microsoft Project 2010 user settings continue to synchronize.
# If you disable this policy setting, Microsoft Project 2010 user settings are excluded from the synchronization settings.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Microsoft Project 2010:
  lgpo.set:
  - name: MicrosoftOffice2010Project
  - setting: Enabled
  - policy_class: Machine
