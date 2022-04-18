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
