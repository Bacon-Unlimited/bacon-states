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
# LOCATION: \Computer\System\Net Logon\Netlogon_NegativeCachePeriod.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies the amount of time (in seconds) the DC locator remembers that a domain controller (DC) could not be found in a domain. When a subsequent attempt to locate the DC occurs within the time set in this setting, DC Discovery immediately fails, without attempting to find the DC.
# 
# The default value for this setting is 45 seconds. The maximum value for this setting is 7 days (7*24*60*60). The minimum value for this setting is 0.
# 
# Warning: If the value for this setting is too large, a client will not attempt to find any DCs that were initially unavailable. If the value for this setting is too small, clients will attempt to find DCs even when none are available.
Specify negative DC Discovery cache setting:
  lgpo.set:
  - name: Netlogon_NegativeCachePeriod
  - setting:
      Netlogon_NegativeCachePeriodLabel: decimal-placeholder
  - policy_class: Machine
