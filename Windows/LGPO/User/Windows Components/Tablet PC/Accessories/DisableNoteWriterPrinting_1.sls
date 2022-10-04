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
# LOCATION: \User\Windows Components\Tablet PC\Accessories\DisableNoteWriterPrinting_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# Prevents printing to Journal Note Writer.
# 
# If you enable this policy, the Journal Note Writer printer driver will not allow printing to it. It will remain displayed in the list of available printers, but attempts to print to it will fail.
# 
# If you disable this policy, you will be able to use this feature to print to a Journal Note.
# 
# If you do not configure this policy, users will be able to use this feature to print to a Journal Note.
Do not allow printing to Journal Note Writer:
  lgpo.set:
  - name: DisableNoteWriterPrinting_1
  - setting: Enabled
  - policy_class: User
