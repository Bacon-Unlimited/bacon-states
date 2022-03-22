# windows:SUPPORTED_Windows7
#
# This policy setting enables you to specify the list of IPv6 corporate site prefixes to monitor for corporate connectivity. Reachability of addresses with any of these prefixes indicates corporate connectivity.
Specify corporate site prefix list:
  lgpo.set:
  - name: NCSI_CorpSitePrefixes
  - setting:
      NCSI_CorpSitePrefixesBox: text-placeholder
  - policy_class: Machine
