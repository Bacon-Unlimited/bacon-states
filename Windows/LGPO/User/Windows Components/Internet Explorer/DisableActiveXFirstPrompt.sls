# SUPPORTED_IE8
#
# This policy setting allows you to turn off the ActiveX Opt-In prompt. ActiveX Opt-In prevents websites from loading any ActiveX control without prior approval. If a website attempts to load an ActiveX control that Internet Explorer has not used before, a Notification bar will appear, asking the user for approval.
# 
# If you enable this policy setting, the ActiveX Opt-In prompt does not appear. Internet Explorer does not ask the user for permission to load an ActiveX control, and Internet Explorer loads the control if it passes all other internal security checks.
# 
# If you disable or do not configure this policy setting, the ActiveX Opt-In prompt appears.
Turn off ActiveX Opt-In prompt:
  lgpo.set:
  - name: DisableActiveXFirstPrompt
  - setting: Enabled
  - policy_class: User
