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
# LOCATION: \Computer\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection\TS_CLIENT_AUDIO.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to specify whether users can redirect the remote computer's audio and video output in a Remote Desktop Services session.
# Users can specify where to play the remote computer's audio output by configuring the remote audio settings on the Local Resources tab in Remote Desktop Connection (RDC). Users can choose to play the remote audio on the remote computer or on the local computer. Users can also choose to not play the audio. Video playback can be configured by using the videoplayback setting in a Remote Desktop Protocol (.rdp) file. By default, video playback is enabled.
# 
# By default, audio and video playback redirection is not allowed when connecting to a computer running Windows Server 2008 R2, Windows Server 2008, or Windows Server 2003. Audio and video playback redirection is allowed by default when connecting to a computer running Windows 8, Windows Server 2012, Windows 7, Windows Vista, or Windows XP Professional.
# 
# If you enable this policy setting, audio and video playback redirection is allowed.
# 
# If you disable this policy setting, audio and video playback redirection is not allowed, even if audio playback redirection is specified in RDC, or video playback is specified in the .rdp file.
# 
# If you do not configure this policy setting audio and video playback redirection is not specified at the Group Policy level. 
# 
Allow audio and video playback redirection:
  lgpo.set:
  - name: TS_CLIENT_AUDIO
  - setting: Enabled
  - policy_class: Machine
