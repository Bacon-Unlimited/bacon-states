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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection\TS_CLIENT_AUDIO_CAPTURE.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify whether users can record audio to the remote computer in a Remote Desktop Services session.
# Users can specify whether to record audio to the remote computer by configuring the remote audio settings on the Local Resources tab in Remote Desktop Connection (RDC). Users can record audio by using an audio input device on the local computer, such as a built-in microphone.
# 
# By default, audio recording redirection is not allowed when connecting to a computer running Windows Server 2008 R2. Audio recording redirection is allowed by default when connecting to a computer running at least Windows 7, or Windows Server 2008 R2. 
# 
# If you enable this policy setting, audio recording redirection is allowed.
# 
# If you disable this policy setting, audio recording redirection is not allowed, even if audio recording redirection is specified in RDC.
# 
# If you do not configure this policy setting, Audio recording redirection is not specified at the Group Policy level.
# 
Allow audio recording redirection:
  lgpo.set:
  - name: TS_CLIENT_AUDIO_CAPTURE
  - setting: Enabled
  - policy_class: Machine
