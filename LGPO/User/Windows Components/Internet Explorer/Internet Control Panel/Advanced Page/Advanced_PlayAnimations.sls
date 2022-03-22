# SUPPORTED_IE6SRVSP1
#
# This policy setting allows you to manage whether Internet Explorer will display animated pictures found in Web content. Generally only animated GIF files are affected by this setting; active Web content such as java applets are not.
# 
# If you enable this policy setting, Internet Explorer will play animated pictures found in Web content.
# 
# If you disable this policy setting, Internet Explorer will not play or download animated pictures, helping pages display more quickly.
# 
# If you do not configure this policy setting, Internet Explorer will play animated pictures found in Web content.
Play animations in web pages:
  lgpo.set:
  - name: Advanced_PlayAnimations
  - setting: Enabled
  - policy_class: User
