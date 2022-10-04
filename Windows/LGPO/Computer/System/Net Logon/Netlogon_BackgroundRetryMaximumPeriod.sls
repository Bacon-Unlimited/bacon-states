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
# LOCATION: \Computer\System\Net Logon\Netlogon_BackgroundRetryMaximumPeriod.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting determines  the maximum retry interval allowed when applications performing periodic searches for Domain Controllers (DCs) are unable to find a DC.
# 
# For example, the retry intervals may be set at 10 minutes, then 20 minutes and then 40 minutes, but when the interval reaches the value set in this setting, that value becomes the retry interval for all subsequent retries until the value set in Final DC Discovery Retry Setting is reached.
# 
# The default value for this setting is 60 minutes (60*60). The maximum value for this setting is 49 days (0x49*24*60*60=4233600). The minimum value for this setting is 0.
# 
# If the value for this setting is smaller than the value specified for the Initial DC Discovery Retry Setting, the Initial DC Discovery Retry Setting is used.
# 
# Warning: If the value for this setting is too large, a client may take very long periods to try to find a DC.
# 
# If the value for this setting is too small and the DC is not available, the frequent retries may produce excessive network traffic.
Use maximum DC discovery retry interval setting for background callers:
  lgpo.set:
  - name: Netlogon_BackgroundRetryMaximumPeriod
  - setting:
      Netlogon_BackgroundRetryMaximumPeriodLabel: decimal-placeholder
  - policy_class: Machine
