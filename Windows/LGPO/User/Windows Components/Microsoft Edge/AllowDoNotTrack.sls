# SUPPORTED_INTERNET_BROWSER_WIN10
#
# This policy setting lets you decide whether employees can send Do Not Track requests to websites that ask for tracking info. By default, Do Not Track requests aren't sent, but employees can choose to turn on and send requests.
# 
# If you enable this setting, Do Not Tracker requests are always sent to websites asking for tracking info.
# 
# If you disable this setting, Do Not Track requests are never sent to websites asking for tracking info.
# 
# If you don't configure this setting, employees can choose whether to send Do Not Track requests to websites asking for tracking info.
Configure Do Not Track:
  lgpo.set:
  - name: AllowDoNotTrack
  - setting: Enabled
  - policy_class: User
