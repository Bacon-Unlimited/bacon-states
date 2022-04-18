# SUPPORTED_INTERNET_BROWSER_WIN10
#
# With this policy, you can specify whether to allow full-screen mode, which shows only the web content and hides the Microsoft Edge UI.
# 
# If enabled or not configured, full-screen mode is available for use in Microsoft Edge. Your users and extensions must have the proper permissions.
# 
# If disabled, full-screen mode is unavailable for use in Microsoft Edge.
Allow FullScreen Mode:
  lgpo.set:
  - name: AllowFullScreenMode
  - setting: Enabled
  - policy_class: User
