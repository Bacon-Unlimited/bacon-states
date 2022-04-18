# SUPPORTED_IE6SRVSP1_NONVISTA
#
# This policy setting allows you to manage whether Internet Explorer checks the Internet for newer versions. When Internet Explorer is set to do this, the checks occur approximately every 30 days, and users are prompted to install new versions as they become available.
# 
# If you enable this policy setting, Internet Explorer checks the Internet for a new version approximately every 30 days and prompts the user to download new versions when they are available.
# 
# If you disable this policy setting, Internet Explorer does not check the Internet for new versions of the browser, so does not prompt users to install them.
# 
# If you do not configure this policy setting, Internet Explorer does not check the Internet for new versions of the browser, so does not prompt users to install them.
Automatically check for Internet Explorer updates:
  lgpo.set:
  - name: Advanced_InternetExplorerUpdates
  - setting: Enabled
  - policy_class: User
