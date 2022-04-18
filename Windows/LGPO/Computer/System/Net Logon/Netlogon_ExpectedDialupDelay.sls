# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies the additional time for the computer to wait for the domain controllers (DC) response when logging on to the network.
# 
# To specify the expected dial-up delay at logon, click Enabled, and then enter the desired value in seconds (for example, the value "60" is 1 minute).
# 
# If you do not confihgure this policy setting, it is not applied to any computers, and computers use their local configuration.
Specify expected dial-up delay on logon:
  lgpo.set:
  - name: Netlogon_ExpectedDialupDelay
  - setting:
      Netlogon_ExpectedDialupDelayLabel: decimal-placeholder
  - policy_class: Machine
