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
# LOCATION: \Computer\System\Net Logon\DC Locator DNS Records\Netlogon_DnsRefreshInterval.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies the Refresh Interval of the DC Locator DNS resource records for DCs to which this setting is applied. These DNS records are dynamically registered by the Net Logon service and are used by the DC Locator algorithm to locate the DC. This setting may be applied only to DCs using dynamic update.
# 
# DCs configured to perform dynamic registration of the DC Locator DNS resource records periodically reregister their records with DNS servers, even if their records data has not changed. If authoritative DNS servers are configured to perform scavenging of the stale records, this reregistration is required to instruct the DNS servers configured to automatically remove (scavenge) stale records that these records are current and should be preserved in the database.
# 
# Warning: If the DNS resource records are registered in zones with scavenging enabled, the value of this setting should never be longer than the Refresh Interval configured for these zones. Setting the Refresh Interval of the DC Locator DNS records to longer than the Refresh Interval of the DNS zones may result in the undesired deletion of DNS resource records.
# 
# To specify the Refresh Interval of the DC records, click Enabled, and then enter a value larger than 1800. This value specifies the Refresh Interval of the DC records in seconds (for example, the value 3600 is 60 minutes).
# 
# If you do not configure this policy setting, it is not applied to any DCs, and DCs use their local configuration.
Specify Refresh Interval of the DC Locator DNS records:
  lgpo.set:
  - name: Netlogon_DnsRefreshInterval
  - setting:
      Netlogon_DnsRefreshIntervalLabel: decimal-placeholder
  - policy_class: Machine
