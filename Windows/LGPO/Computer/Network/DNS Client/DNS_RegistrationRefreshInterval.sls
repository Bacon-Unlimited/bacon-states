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
# LOCATION: \Computer\Network\DNS Client\DNS_RegistrationRefreshInterval.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# Specifies the interval used by DNS clients to refresh registration of A and PTR resource. This policy setting only applies to computers performing dynamic DNS updates.
# 
# Computers configured to perform dynamic DNS registration of A and PTR resource records periodically reregister their records with DNS servers, even if the record has not changed. This reregistration is required to indicate to DNS servers that records are current and should not be automatically removed (scavenged) when a DNS server is configured to delete stale records.
# 
# Warning: If record scavenging is enabled on the zone, the value of this policy setting should never be longer than the value of the DNS zone refresh interval. Configuring the registration refresh interval to be longer than the refresh interval of the DNS zone might result in the undesired deletion of A and PTR resource records.
# 
# To specify the registration refresh interval, click Enabled and then enter a value of 1800 or greater. The value that you specify is the number of seconds to use for the registration refresh interval. For example, 1800 seconds is 30 minutes.
# 
# If you enable this policy setting, registration refresh interval that you specify will be applied to all network connections used by computers that receive this policy setting.
# 
# If you disable this policy setting, or if you do not configure this policy setting, computers will use the local or DHCP supplied setting. By default, client computers configured with a static IP address attempt to update their DNS resource records once every 24 hours and DHCP clients will attempt to update their DNS resource records when a DHCP lease is granted or renewed.
Registration refresh interval:
  lgpo.set:
  - name: DNS_RegistrationRefreshInterval
  - setting:
      DNS_RegistrationRefreshIntervalLabel: decimal-placeholder
  - policy_class: Machine
