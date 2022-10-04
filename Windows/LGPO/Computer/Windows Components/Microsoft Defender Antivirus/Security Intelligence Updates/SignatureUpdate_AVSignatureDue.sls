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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Security Intelligence Updates\SignatureUpdate_AVSignatureDue.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to define the number of days that must pass before virus security intelligence is considered out of date. If security intelligence is determined to be out of date, this state may trigger several additional actions, including falling back to an alternative update source or displaying a warning icon in the user interface. By default, this value is set to 14 days.
# 
#     If you enable this setting, virus security intelligence will be considered out of date after the number of days specified have passed without an update.
# 
#     If you disable or do not configure this setting, virus security intelligence will be considered out of date after the default number of days have passed without an update.
Define the number of days before virus security intelligence is considered out of date:
  lgpo.set:
  - name: SignatureUpdate_AVSignatureDue
  - setting:
      SignatureUpdate_AVSignatureDue: decimal-placeholder
  - policy_class: Machine
