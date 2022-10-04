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
# LOCATION: \Computer\System\Windows Time Service\Time Providers\W32TIME_POLICY_CONFIGURE_NTPCLIENT.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies a set of parameters for controlling the Windows NTP Client.
# 
# If you enable this policy setting, you can specify the following parameters for the Windows NTP Client.
# 
# If you disable or do not configure this policy setting, the WIndows NTP Client uses the defaults of each of the following parameters.
# 
# NtpServer
# The Domain Name System (DNS) name or IP address of an NTP time source. This value is in the form of ""dnsName,flags"" where ""flags"" is a hexadecimal bitmask of the flags for that host. For more information, see the NTP Client Group Policy Settings Associated with Windows Time section of the Windows Time Service Group Policy Settings.  The default value is ""time.windows.com,0x09"". 
# 
# Type
# This value controls the authentication that W32time uses. The default value is NT5DS.
# 
# CrossSiteSyncFlags
# This value, expressed as a bitmask, controls how W32time chooses time sources outside its own site. The possible values are 0, 1, and 2. Setting this value to 0 (None) indicates that the time client should not attempt to synchronize time outside its site. Setting this value to 1 (PdcOnly) indicates that only the computers that function as primary domain controller (PDC) emulator operations masters in other domains can be used as synchronization partners when the client has to synchronize time with a partner outside its own site. Setting a value of 2 (All) indicates that any synchronization partner can be used. This value is ignored if the NT5DS value is not set. The default value is 2 decimal (0x02 hexadecimal).
# 
# ResolvePeerBackoffMinutes
# This value, expressed in minutes, controls how long W32time waits before it attempts to resolve a DNS name when a previous attempt failed. The default value is 15 minutes.
# 
# ResolvePeerBackoffMaxTimes
# This value controls how many times W32time attempts to resolve a DNS name before the discovery process is restarted. Each time DNS name resolution fails, the amount of time to wait before the next attempt will be twice the previous amount. The default value is seven attempts.
# 
# SpecialPollInterval
# This NTP client value, expressed in seconds, controls how often a manually configured time source is polled when the time source is configured to use a special polling interval. If the SpecialInterval flag is enabled on the NTPServer setting, the client uses the value that is set as the SpecialPollInterval, instead of a variable interval between MinPollInterval and MaxPollInterval values, to determine how frequently to poll the time source. SpecialPollInterval must be in the range of [MinPollInterval, MaxPollInterval], else the nearest value of the range is picked. Default: 1024 seconds.
# 
# EventLogFlags
# This value is a bitmask that controls events that may be logged to the System log in Event Viewer. Setting this value to 0x1 indicates that W32time will create an event whenever a time jump is detected. Setting this value to 0x2 indicates that W32time will create an event whenever a time source change is made. Because it is a bitmask value, setting 0x3 (the addition of 0x1 and 0x2) indicates that both time jumps and time source changes will be logged.
#       
Configure Windows NTP Client:
  lgpo.set:
  - name: W32TIME_POLICY_CONFIGURE_NTPCLIENT
  - setting:
      W32TIME_CrossSiteSyncFlags: decimal-placeholder
      W32TIME_NtpClientEventLogFlags: decimal-placeholder
      W32TIME_NtpServer: text-placeholder
      W32TIME_ResolvePeerBackoffMaxTimes: decimal-placeholder
      W32TIME_ResolvePeerBackoffMinutes: decimal-placeholder
      W32TIME_SpecialPollInterval: decimal-placeholder
      W32TIME_Type: enum-placeholder
  - policy_class: Machine
