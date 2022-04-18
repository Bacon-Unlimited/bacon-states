# SUPPORTED_IE8
#
# This policy setting allows you to choose whether or not toolbars and Browser Helper Objects (BHOs) are loaded by default during an InPrivate Browsing session.
# 
# Toolbars and BHOs may store data about a user's browsing session. By default, the computer does not load them when InPrivate Browsing starts.
# 
# If you enable this policy setting, toolbars and BHOs are not loaded by default during an InPrivate Browsing session.
# 
# If you disable this policy setting, toolbars and BHOs are loaded by default during an InPrivate Browsing session.
# 
# If you do not configure this policy setting, it can be configured on the Privacy tab in Internet Options.
Prevent the computer from loading toolbars and Browser Helper Objects when InPrivate Browsing starts:
  lgpo.set:
  - name: DisableInPrivateToolbars
  - setting: Enabled
  - policy_class: Machine
