# windows:SUPPORTED_Windows7
#
# This policy setting enables you to specify the host name of a computer known to be on the corporate network. Successful resolution of this host name to the expected address indicates corporate connectivity.
Specify corporate DNS probe host name:
  lgpo.set:
  - name: NCSI_CorpDnsProbeHost
  - setting:
      NCSI_CorpDnsProbeHostBox: text-placeholder
  - policy_class: Machine
