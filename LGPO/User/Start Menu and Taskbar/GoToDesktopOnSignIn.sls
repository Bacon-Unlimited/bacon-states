# windows:SUPPORTED_Windows_6_3only
#
# This policy setting allows users to go to the desktop instead of the Start screen when they sign in.
# 
# If you enable this policy setting, users will always go to the desktop when they sign in.
# 
# If you disable this policy setting, users will always go to the Start screen when they sign in.
# 
# If you dont configure this policy setting, the default setting for the users device will be used, and the user can choose to change it.
Go to the desktop instead of Start when signing in:
  lgpo.set:
  - name: GoToDesktopOnSignIn
  - setting: Enabled
  - policy_class: User
