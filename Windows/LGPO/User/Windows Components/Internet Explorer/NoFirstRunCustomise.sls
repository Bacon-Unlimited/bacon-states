# SUPPORTED_IE7
#
# This policy setting prevents Internet Explorer from running the First Run wizard the first time a user starts the browser after installing Internet Explorer or Windows.
# 
# If you enable this policy setting, you must make one of the following choices:
#      Skip the First Run wizard, and go directly to the user's home page.
#      Skip the First Run wizard, and go directly to the "Welcome to Internet Explorer" webpage.
# 
# Starting with Windows 8, the "Welcome to Internet Explorer" webpage is not available. The user's home page will display regardless of which option is chosen.
# 
# If you disable or do not configure this policy setting, Internet Explorer may run the First Run wizard the first time the browser is started after installation.
Prevent running First Run wizard:
  lgpo.set:
  - name: NoFirstRunCustomise
  - setting:
      FirstRunOptions: enum-placeholder
  - policy_class: User
