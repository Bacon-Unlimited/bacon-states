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
# LOCATION: \Computer\Windows Components\Sound Recorder\Soundrec_DiableApplication_TitleText_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# Specifies whether Sound Recorder can run.
# 
# Sound Recorder is a feature of Microsoft Windows Vista that can be used to record sound from an audio input device where the recorded sound is encoded and saved as an audio file.
# 
# If you enable this policy setting, Sound Recorder will not run.
# 
# If you disable or do not configure this policy setting, Sound Recorder can be run.
Do not allow Sound Recorder to run:
  lgpo.set:
  - name: Soundrec_DiableApplication_TitleText_2
  - setting: Enabled
  - policy_class: Machine
