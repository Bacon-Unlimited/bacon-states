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
# LOCATION: \User\Windows Components\IME\L_TurnOnLexiconUpdate.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOARM
#
# This policy setting controls the lexicon update feature, which downloads hot and popular words lexicon to local PC.
# 
# If you enable this policy setting, the functionality associated with this feature is turned on, hot and popular words lexicon can be downloaded to local PC, the user is able to turn it on or off in settings.
# 
# If you disable this policy setting, the functionality associated with this feature is turned off, and the user won't be able to turn it on.
# 
# If you don't configure this policy setting, it will be turned on by default, and the user can turn on and turn off the lexicon udpate feature.
# 
# This Policy setting applies only to Microsoft CHS Pinyin IME.
Turn on lexicon update:
  lgpo.set:
  - name: L_TurnOnLexiconUpdate
  - setting: Enabled
  - policy_class: User
