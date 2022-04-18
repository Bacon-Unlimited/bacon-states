# SUPPORTED_INTERNET_BROWSER_WIN10V1511
#
# This policy setting lets you decide whether employees can browse using InPrivate website browsing.
# 
# If you enable or don't configure this setting, employees can use InPrivate website browsing.
# 
# If you disable this setting, employees can't use InPrivate website browsing.
Allow InPrivate browsing:
  lgpo.set:
  - name: AllowInPrivate
  - setting: Enabled
  - policy_class: User
