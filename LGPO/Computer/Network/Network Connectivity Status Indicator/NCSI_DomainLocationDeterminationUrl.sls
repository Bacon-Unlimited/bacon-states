# windows:SUPPORTED_Windows7
#
# This policy setting enables you to specify the HTTPS URL of the corporate website that clients use to determine the current domain location (i.e. whether the computer is inside or outside the corporate network). Reachability of the URL destination indicates that the client location is inside corporate network; otherwise it is outside the network.
Specify domain location determination URL:
  lgpo.set:
  - name: NCSI_DomainLocationDeterminationUrl
  - setting:
      NCSI_DomainLocationDeterminationUrlBox: text-placeholder
  - policy_class: Machine
