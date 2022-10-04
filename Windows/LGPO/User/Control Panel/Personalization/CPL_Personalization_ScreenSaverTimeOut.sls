####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \User\Control Panel\Personalization\CPL_Personalization_ScreenSaverTimeOut.sls
#
# SUPPORTED WINDOWS OS
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
