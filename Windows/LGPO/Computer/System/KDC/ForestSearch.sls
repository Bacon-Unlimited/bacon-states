# windows:SUPPORTED_Windows7
#
# This policy setting defines the list of trusting forests that the Key Distribution Center (KDC) searches when attempting to resolve two-part service principal names (SPNs).
# 
# If you enable this policy setting, the KDC will search the forests in this list if it is unable to resolve a two-part SPN in the local forest. The forest search is performed by using a global catalog or name suffix hints. If a match is found, the KDC will return a referral ticket to the client for the appropriate domain.
# 
# If you disable or do not configure this policy setting, the KDC will not search the listed forests to resolve the SPN. If the KDC is unable to resolve the SPN because the name is not found, NTLM authentication might be used.
# 
# To ensure consistent behavior, this policy setting must be supported and set identically on all domain controllers in the domain.
Use forest search order:
  lgpo.set:
  - name: ForestSearch
  - setting:
      ForestSearchList: text-placeholder
  - policy_class: Machine
