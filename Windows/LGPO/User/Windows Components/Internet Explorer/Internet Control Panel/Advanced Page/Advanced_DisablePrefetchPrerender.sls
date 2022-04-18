# SUPPORTED_IE11
#
# This policy setting determines whether Internet Explorer preemptively loads websites and content in the background, speeding up performance such that when the user clicks a hyperlink, the background page seamlessly switches into view.
# 
# If you enable this policy setting, Internet Explorer doesn't load any websites or content in the background.
# 
# If you disable this policy setting, Internet Explorer preemptively loads websites and content in the background.
# 
# If you don't configure this policy setting, users can turn this behavior on or off, using Internet Explorer settings. This feature is turned on by default
Turn off loading websites and content in the background to optimize performance:
  lgpo.set:
  - name: Advanced_DisablePrefetchPrerender
  - setting: Enabled
  - policy_class: User
