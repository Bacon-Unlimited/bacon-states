# windows:SUPPORTED_Windows7
#
# This policy setting enables you to specify the URL of the corporate website, against which an active probe is performed.
Specify corporate Website probe URL:
  lgpo.set:
  - name: NCSI_CorpWebProbeUrl
  - setting:
      NCSI_CorpWebProbeUrlBox: text-placeholder
  - policy_class: Machine
