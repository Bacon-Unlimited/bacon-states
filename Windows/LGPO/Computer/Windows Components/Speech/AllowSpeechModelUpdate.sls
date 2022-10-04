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
# LOCATION: \Computer\Windows Components\Speech\AllowSpeechModelUpdate.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# Specifies whether the device will receive updates to the speech recognition and speech synthesis models. 
#       
# A speech model contains data used by the speech engine to convert audio to text (or vice-versa). The models are periodically updated to improve accuracy and performance. Models are non-executable data files. 
# 
# If enabled (default), the device will periodically check for updated speech models and then download them from a Microsoft service using the Background Internet Transfer Service (BITS).
Allow Automatic Update of Speech Data:
  lgpo.set:
  - name: AllowSpeechModelUpdate
  - setting: Enabled
  - policy_class: Machine
