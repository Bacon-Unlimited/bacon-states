# windows:SUPPORTED_Win2kSP1
#
# Specifies how much user idle time must elapse before the screen saver is launched.
# 
# When configured, this idle time can be set from a minimum of 1 second to a maximum of 86,400 seconds, or 24 hours. If set to zero, the screen saver will not be started.
# 
# This setting has no effect under any of the following circumstances:
# 
#     - The setting is disabled or not configured.
# 
#     - The wait time is set to zero.
# 
#     - The "Enable Screen Saver" setting is disabled.
# 
#     - Neither the "Screen saver executable name" setting nor the Screen Saver dialog of the client computer's Personalization or Display Control Panel specifies a valid existing screen saver program on the client.
# 
# When not configured, whatever wait time is set on the client through the Screen Saver dialog in the Personalization or Display Control Panel is used. The default is 15 minutes.
Screen saver timeout:
  lgpo.set:
  - name: CPL_Personalization_ScreenSaverTimeOut
  - setting:
      ScreenSaverTimeOutFreqSpin: decimal-placeholder
  - policy_class: User
