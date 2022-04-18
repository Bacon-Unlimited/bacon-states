# windows:SUPPORTED_Windows7
#
# This policy setting defines the list of trusting forests that the Kerberos client searches when attempting to resolve two-part service principal names (SPNs).
# 
# If you enable this policy setting, the Kerberos client searches the forests in this list, if it is unable to resolve a two-part SPN. If a match is found, the Kerberos client requests a referral ticket to the appropriate domain.
# 
# If you disable or do not configure this policy setting, the Kerberos client does not search the listed forests to resolve the SPN. If the Kerberos client is unable to resolve the SPN because the name is not found, NTLM authentication might be used.
Use forest search order:
  lgpo.set:
  - name: ForestSearch
  - setting:
      ForestSearchList: text-placeholder
  - policy_class: Machine
