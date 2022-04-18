# windows:SUPPORTED_Windows7
#
# This policy setting  enables you to specify the expected address of the host name used for the DNS probe. Successful resolution of the host name to this address indicates corporate connectivity.
Specify corporate DNS probe host address:
  lgpo.set:
  - name: NCSI_CorpDnsProbeContent
  - setting:
      NCSI_CorpDnsProbeContentBox: text-placeholder
  - policy_class: Machine
