# SUPPORTED_IE6SRVSP1ONLY
#
# This policy setting allows you to manage whether Internet Explorer will display videos found in Web content. Generally only embedded video files are affected by this setting; active Web content such as java applets are not.
# 
# If you enable this policy setting, Internet Explorer will play videos found in Web content.
# 
# If you disable this policy setting, Internet Explorer will not play or download videos, helping pages display more quickly.
# 
# If you do not configure this policy setting, Internet Explorer will play videos found in Web content.
Play videos in web pages:
  lgpo.set:
  - name: Advanced_PlayVideos
  - setting: Enabled
  - policy_class: User
