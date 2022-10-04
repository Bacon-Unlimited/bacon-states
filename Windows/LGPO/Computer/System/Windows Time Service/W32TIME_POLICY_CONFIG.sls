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
# LOCATION: \Computer\System\Windows Time Service\W32TIME_POLICY_CONFIG.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to specify Clock discipline and General values for the Windows Time service (W32time) for domain controllers including RODCs.
# 
# If this policy setting is enabled, W32time Service on target machines use the settings provided here. Otherwise, the service on target machines use locally configured settings values.
# 
# For more details on individual parameters, combinations of parameter values as well as definitions of flags, see https://go.microsoft.com/fwlink/?linkid=847809.
# 
#         FrequencyCorrectRate
# This parameter controls the rate at which the W32time corrects the local clock's frequency. Lower values cause slower corrections; larger values cause more frequent corrections. Default: 4 (scalar).
# 
#         HoldPeriod
# This parameter indicates how many consistent time samples the client computer must receive in a series before subsequent time samples are evaluated as potential spikes. Default: 5
# 
#         LargePhaseOffset
# If a time sample differs from the client computer's local clock by more than LargePhaseOffset, the local clock is deemed to have drifted considerably, or in other words, spiked. Default: 50,000,000 100-nanosecond units (ns) or 5 seconds.
# 
#         MaxAllowedPhaseOffset
# If a response is received that has a time variation that is larger than this parameter value, W32time sets the client computer's local clock immediately to the time that is accepted as accurate from the Network Time Protocol (NTP) server. If the time variation is less than this value, the client computer's local clock is corrected gradually. Default: 300 seconds.
# 
#         MaxNegPhaseCorrection
# If a time sample is received that indicates a time in the past (as compared to the client computer's local clock) that has a time difference that is greater than the MaxNegPhaseCorrection value, the time sample is discarded. Default: 172,800 seconds.
# 
#         MaxPosPhaseCorrection
# If a time sample is received that indicates a time in the future (as compared to the client computer's local clock) that has a time difference greater than the MaxPosPhaseCorrection value, the time sample is discarded. Default: 172,800 seconds.
# 
#         PhaseCorrectRate
# This parameter controls how quickly W32time corrects the client computer's local clock difference to match time samples that are accepted as accurate from the NTP server. Lower values cause the clock to correct more slowly; larger values cause the clock to correct more quickly. Default: 7 (scalar).
# 
#         PollAdjustFactor
# This parameter controls how quickly W32time changes polling intervals. When responses are considered to be accurate, the polling interval lengthens automatically. When responses are considered to be inaccurate, the polling interval shortens automatically. Default: 5 (scalar).
# 
#         SpikeWatchPeriod
# This parameter specifies the amount of time that samples with time offset larger than LargePhaseOffset are received before these samples are accepted as accurate. SpikeWatchPeriod is used in conjunction with HoldPeriod to help eliminate sporadic, inaccurate time samples that are returned from a peer. Default: 900 seconds.
# 
#         UpdateInterval
# This parameter specifies the amount of time that W32time waits between corrections when the clock is being corrected gradually. When it makes a gradual correction, the service adjusts the clock slightly, waits this amount of time, and then checks to see if another adjustment is needed, until the correction is finished. Default: 100 1/100th second units, or 1 second.
# 
#         General parameters:
# 
#         AnnounceFlags
# This parameter is a bitmask value that controls how time service availability is advertised through NetLogon. Default: 0x0a hexadecimal
# 
#         EventLogFlags
# This parameter controls special events that may be logged to the Event Viewer System log. Default: 0x02 hexadecimal bitmask.
# 
#         LocalClockDispersion
# This parameter indicates the maximum error in seconds that is reported by the NTP server to clients that are requesting a time sample. (Applies only when the NTP server is using the time of the local CMOS clock.) Default: 10 seconds.
# 
#         MaxPollInterval
# This parameter controls the maximum polling interval, which defines the maximum amount of time between polls of a peer. Default: 10 in log base-2, or 1024 seconds. (Should not be set higher than 15.)
# 
#         MinPollInterval
# This parameter controls the minimum polling interval that defines the minimum amount of time between polls of a peer. Default: 6 in log base-2, or 64 seconds.
# 
#         ClockHoldoverPeriod
# This parameter indicates the maximum number of seconds a system clock can nominally hold its accuracy without synchronizing with a time source. If this period of time passes without W32time obtaining new samples from any of its input providers, W32time initiates a rediscovery of time sources. Default: 7800 seconds.
# 
#         RequireSecureTimeSyncRequests
# This parameter controls whether or not the DC will respond to time sync requests that use older authentication protocols. If enabled (set to 1), the DC will not respond to requests using such protocols. Default: 0 Boolean.
# 
#         UtilizeSslTimeData
# This parameter controls whether W32time will use time data computed from SSL traffic on the machine as an additional input for correcting the local clock.  Default: 1 (enabled) Boolean
# 
#         ClockAdjustmentAuditLimit
# This parameter specifies the smallest local clock adjustments that may be logged to the W32time service event log on the target machine. Default: 800 Parts per million (PPM).
# 
#         RODC parameters:
# 
#         ChainEntryTimeout
# This parameter specifies the maximum amount of time that an entry can remain in the chaining table before the entry is considered to be expired. Expired entries may be removed when the next request or response is processed. Default: 16 seconds.
# 
#         ChainMaxEntries
# This parameter controls the maximum number of entries that are allowed in the chaining table. If the chaining table is full and no expired entries can be removed, any incoming requests are discarded. Default: 128 entries.
# 
#         ChainMaxHostEntries
# This parameter controls the maximum number of entries that are allowed in the chaining table for a particular host. Default: 4 entries.
# 
#         ChainDisable
# This parameter controls whether or not the chaining mechanism is disabled. If chaining is disabled (set to 0), the RODC can synchronize with any domain controller, but hosts that do not have their passwords cached on the RODC will not be able to synchronize with the RODC. Default: 0 Boolean.
# 
#         ChainLoggingRate
# This parameter controls the frequency at which an event that indicates the number of successful and unsuccessful chaining attempts is logged to the System log in Event Viewer. Default: 30 minutes.
#       
Global Configuration Settings:
  lgpo.set:
  - name: W32TIME_POLICY_CONFIG
  - setting:
      W32TIME_AnnounceFlags: decimal-placeholder
      W32TIME_ChainDisable: decimal-placeholder
      W32TIME_ChainEntryTimeout: decimal-placeholder
      W32TIME_ChainLoggingRate: decimal-placeholder
      W32TIME_ChainMaxEntries: decimal-placeholder
      W32TIME_ChainMaxHostEntries: decimal-placeholder
      W32TIME_ClockAdjustmentAuditLimit: decimal-placeholder
      W32TIME_ClockHoldoverPeriod: decimal-placeholder
      W32TIME_EventLogFlags: decimal-placeholder
      W32TIME_FrequencyCorrectRate: decimal-placeholder
      W32TIME_HoldPeriod: decimal-placeholder
      W32TIME_LargePhaseOffset: decimal-placeholder
      W32TIME_LocalClockDispersion: decimal-placeholder
      W32TIME_MaxAllowedPhaseOffset: decimal-placeholder
      W32TIME_MaxNegPhaseCorrection: decimal-placeholder
      W32TIME_MaxPollInterval: decimal-placeholder
      W32TIME_MaxPosPhaseCorrection: decimal-placeholder
      W32TIME_MinPollInterval: decimal-placeholder
      W32TIME_PhaseCorrectRate: decimal-placeholder
      W32TIME_PollAdjustFactor: decimal-placeholder
      W32TIME_RequireSecureTimeSyncRequests: decimal-placeholder
      W32TIME_SpikeWatchPeriod: decimal-placeholder
      W32TIME_UpdateInterval: decimal-placeholder
      W32TIME_UtilizeSslTimeData: decimal-placeholder
  - policy_class: Machine
