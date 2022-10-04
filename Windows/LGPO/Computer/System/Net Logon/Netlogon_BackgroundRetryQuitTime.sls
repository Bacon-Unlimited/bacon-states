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
# LOCATION: \Computer\System\Net Logon\Netlogon_BackgroundRetryQuitTime.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting determines when retries are no longer allowed for applications that perform periodic searches for domain controllers (DC) are unable to find a DC. For example, retires may be set to occur according to the Use maximum DC discovery retry interval policy setting, but when the value set in this policy setting is reached, no more retries occur. If a value for this policy setting is smaller than the value in the Use maximum DC discovery retry interval policy setting, the value for Use maximum DC discovery retry interval policy setting is used.
# 
# The default value for this setting is to not quit retrying (0). The maximum value for this setting is 49 days (0x49*24*60*60=4233600). The minimum value for this setting is 0.
# 
# Warning: If the value for this setting is too small, a client will stop trying to find a DC too soon.
Use final DC discovery retry setting for background callers:
  lgpo.set:
  - name: Netlogon_BackgroundRetryQuitTime
  - setting:
      Netlogon_BackgroundRetryQuitTimeLabel: decimal-placeholder
  - policy_class: Machine
