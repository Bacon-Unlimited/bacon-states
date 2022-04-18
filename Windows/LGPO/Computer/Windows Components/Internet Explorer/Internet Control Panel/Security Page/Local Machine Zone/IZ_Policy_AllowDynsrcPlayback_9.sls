# SUPPORTED_IE7
#
# This policy setting allows the playing of video and animation through older media players in specified zones. Video and animation playback through the object tag may still be allowed, because this involves external controls or media players.
# 
# The dynsrc attribute on the img tag specifies an older media player. Also, as of Internet Explorer 8, this policy setting controls HTML+TIME media elements that refer to audio and video files.
# 
# If you enable this policy setting, video and animation can be played through older media players in specified zones.
# 
# If you disable this policy setting, video and animation cannot be played through older media players.
# 
# If you do not configure this policy setting, video and animation can be played through older media players in specified zones.
Allow video and animation on a webpage that uses an older media player:
  lgpo.set:
  - name: IZ_Policy_AllowDynsrcPlayback_9
  - setting:
      IZ_Partname120A: enum-placeholder
  - policy_class: Machine
