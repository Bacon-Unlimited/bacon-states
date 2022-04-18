# SUPPORTED_IE9
#
# This policy setting allows you to revert to the Internet Explorer 8 behavior of allowing OnUnLoad script handlers to display UI during shutdown. This policy setting may be needed to fix compatibility problems with particular web applications.
# 
# If you enable this policy setting, OnUnLoad script handlers display UI during shutdown.
# 
# If you disable or do not configure this policy setting, OnUnLoad script handlers do not display UI during shutdown (default behavior in Internet Explorer 9).
Allow Internet Explorer 8 shutdown behavior:
  lgpo.set:
  - name: FastShutdownOnUnload
  - setting: Enabled
  - policy_class: Machine
