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
# LOCATION: \Computer\System\Net Logon\Netlogon_BackgroundSuccessfulRefreshPeriod.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting determines when a successful DC cache entry is refreshed. This policy setting is applied to caller programs that periodically attempt to locate DCs, and it is applied before  returning the DC information to the caller program. The default value for this setting is infinite (4294967200). The maximum value for this setting is (4294967200), while the maximum that is not treated as infinity is 49 days (49*24*60*60=4233600). Any larger value is treated as infinity. The minimum value for this setting is to always refresh (0).
Use positive periodic DC cache refresh for background callers:
  lgpo.set:
  - name: Netlogon_BackgroundSuccessfulRefreshPeriod
  - setting:
      Netlogon_BackgroundSuccessfulRefreshPeriodLabel: decimal-placeholder
  - policy_class: Machine
