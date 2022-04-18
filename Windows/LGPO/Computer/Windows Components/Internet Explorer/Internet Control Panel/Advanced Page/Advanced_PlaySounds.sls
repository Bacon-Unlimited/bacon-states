# SUPPORTED_IE6SRVSP1
#
# This policy setting allows you to manage whether Internet Explorer will play sounds found in web content. Generally only sound files such as MIDI files are affected by this setting; active Web content such as java applets are not.
# 
# If you enable this policy setting, Internet Explorer will play sounds found in Web content.
# 
# If you disable this policy setting, Internet Explorer will not play or download sounds in Web content, helping pages display more quickly.
# 
# If you enable this policy setting, Internet Explorer will play sounds found in Web content.
Play sounds in web pages:
  lgpo.set:
  - name: Advanced_PlaySounds
  - setting: Enabled
  - policy_class: Machine
