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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Intranet Zone\IZ_Policy_AllowDynsrcPlayback_3.sls
#
# SUPPORTED WINDOWS OS
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
  - name: IZ_Policy_AllowDynsrcPlayback_3
  - setting:
      IZ_Partname120A: enum-placeholder
  - policy_class: User
