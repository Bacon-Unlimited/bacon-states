# SUPPORTED_IE5ONLY
#
# Prevents the Internet Explorer splash screen from appearing when users start the browser.
# 
# If you enable this policy, the splash screen, which displays the program name, licensing, and copyright information, is not displayed.
# 
# If you disable this policy or do not configure it, the splash screen will be displayed when users start their browsers.
Disable showing the splash screen:
  lgpo.set:
  - name: NoSplash
  - setting: Enabled
  - policy_class: Machine
