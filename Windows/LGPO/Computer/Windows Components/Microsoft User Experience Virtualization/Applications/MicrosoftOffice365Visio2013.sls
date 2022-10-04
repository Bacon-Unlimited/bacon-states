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
# LOCATION: \Computer\Windows Components\Microsoft User Experience Virtualization\Applications\MicrosoftOffice365Visio2013.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# 
# This policy setting configures the synchronization of user settings for Microsoft Office 365 Visio 2013.
# Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Visio 2013 will synchronize between a users work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Visio 2013 from synchronization between computers with UE-V.
# If you enable this policy setting, Microsoft Office 365 Visio 2013 user settings continue to sync with UE-V.
# If you disable this policy setting, Microsoft Office 365 Visio 2013 user settings are excluded from synchronization with UE-V.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Microsoft Office 365 Visio 2013:
  lgpo.set:
  - name: MicrosoftOffice365Visio2013
  - setting: Enabled
  - policy_class: Machine
