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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection\TS_CLIENT_AUDIO_QUALITY.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows you to limit the audio playback quality for a Remote Desktop Services session. Limiting the quality of audio playback can improve connection performance, particularly over slow links.
# 
# If you enable this policy setting, you must select one of the following:  High, Medium, or Dynamic. If you select High, the audio will be sent without any compression and with minimum latency. This requires a large amount of bandwidth. If you select Medium, the audio will be sent with some compression and with minimum latency as determined by the codec that is being used. If you select Dynamic, the audio will be sent with a level of compression that is determined by the bandwidth of the remote connection.
# 
# The audio playback quality that you specify on the remote computer by using this policy setting is the maximum quality that can be used for a Remote Desktop Services session, regardless of the audio playback quality configured on the client computer.  For example, if the audio playback quality configured on the client computer is higher than the audio playback quality configured on the remote computer, the lower level of audio playback quality will be used.
# 
# Audio playback quality can be configured on the client computer by using the audioqualitymode setting in a Remote Desktop Protocol (.rdp) file. By default, audio playback quality is set to Dynamic.
# 
# If you disable or do not configure this policy setting, audio playback quality will be set to Dynamic.
Limit audio playback quality:
  lgpo.set:
  - name: TS_CLIENT_AUDIO_QUALITY
  - setting:
      TS_AUDIO_QUALITY_LEVEL: enum-placeholder
  - policy_class: Machine
