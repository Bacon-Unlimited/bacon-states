# SUPPORTED_IE10WIN8
#
# This policy setting determines whether a user can swipe across a screen or click Forward to go to the next pre-loaded page of a website.
# 
# Microsoft collects your browsing history to improve how flip ahead with page prediction works. This feature isn't available for Internet Explorer for the desktop.
# 
# If you enable this policy setting, flip ahead with page prediction is turned off and the next webpage isn't loaded into the background.
# 
# If you disable this policy setting, flip ahead with page prediction is turned on and the next webpage is loaded into the background.
# 
# If you don't configure this setting, users can turn this behavior on or off, using the Settings charm.
Turn off the flip ahead with page prediction feature:
  lgpo.set:
  - name: Advanced_DisableFlipAhead
  - setting: Enabled
  - policy_class: User
