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
# LOCATION: \Computer\System\Net Logon\Netlogon_NonBackgroundSuccessfulRefreshPeriod.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting determines when a successful DC cache entry is refreshed. This policy setting is applied to caller programs that do not periodically attempt to locate DCs, and it is applied before the returning the DC information to the caller program. This policy setting is relevant to only those callers of DsGetDcName that have not specified the DS_BACKGROUND_ONLY flag.
# 
# The default value for this setting is 30 minutes (1800). The maximum value for this setting is (4294967200), while the maximum that is not treated as infinity is 49 days (49*24*60*60=4233600). Any larger value will be treated as infinity. The minimum value for this setting is to always refresh (0).
Specify positive periodic DC Cache refresh for non-background callers:
  lgpo.set:
  - name: Netlogon_NonBackgroundSuccessfulRefreshPeriod
  - setting:
      Netlogon_NonBackgroundSuccessfulRefreshPeriodLabel: decimal-placeholder
  - policy_class: Machine
