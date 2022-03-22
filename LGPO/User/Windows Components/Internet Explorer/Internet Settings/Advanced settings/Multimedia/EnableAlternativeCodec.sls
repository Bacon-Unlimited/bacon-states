# SUPPORTED_IE9
#
# This policy setting specifies whether Internet Explorer plays media files that use alternative codecs and that require additional software.
# 
# If you enable this policy setting, Internet Explorer plays these files, if the appropriate software is installed.
# 
# If you disable this policy setting, Internet Explorer does not play these files.
# 
# If you do not configure this policy setting, the user can change the "Enable alternative codecs in HTML5 media elements" setting on the Advanced tab in the Internet Options dialog box.
Allow Internet Explorer to play media files that use alternative codecs:
  lgpo.set:
  - name: EnableAlternativeCodec
  - setting: Enabled
  - policy_class: User
