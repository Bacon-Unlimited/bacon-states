# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure at what size Kerberos tickets will trigger the warning event issued during Kerberos authentication. The ticket size warnings are logged in the System log.
# 
# If you enable this policy setting, you can set the threshold limit for Kerberos ticket which trigger the warning events. If set too high, then authentication failures might be occurring even though warning events are not being logged.  If set too low, then there will be too many ticket warnings in the log to be useful for analysis. This value should be set to the same value as the Kerberos policy "Set maximum Kerberos SSPI context token buffer size" or the smallest MaxTokenSize used in your environment if you are not configuring using Group Policy.
#       
# If you disable or do not configure this policy setting, the threshold value defaults to 12,000 bytes, which is the default Kerberos MaxTokenSize for Windows 7, Windows Server 2008 R2 and prior versions.
# 
Warning for large Kerberos tickets:
  lgpo.set:
  - name: TicketSizeThreshold
  - setting:
      TicketSizeThreshold: decimal-placeholder
  - policy_class: Machine
