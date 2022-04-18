# windows:SUPPORTED_Windows8
#
# This Policy setting enables you to specify passive polling behavior. NCSI polls various measurements throughout the network stack on a frequent interval to determine if network connectivity has been lost.  Use the options to control the passive polling behavior.
Specify passive polling:
  lgpo.set:
  - name: NCSI_PassivePolling
  - setting:
      NCSI_DisablePassivePolling_Checkbox: boolean-placeholder
  - policy_class: Machine
