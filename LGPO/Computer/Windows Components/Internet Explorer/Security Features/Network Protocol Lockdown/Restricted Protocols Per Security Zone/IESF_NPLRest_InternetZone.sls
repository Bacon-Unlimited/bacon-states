# SUPPORTED_IE6SP2
#
# For each zone, the Network Protocol Lockdown security restriction may be configured to prevent active content obtained through restricted protocols from running in an unsafe manner, either by prompting the user, or simply disabling the content. For each zone, this list of protocols may be configured here, and applies to all processes which have opted in to the security restriction.
# 
# If you enable this policy setting for a zone, this sets the list of protocols to be restricted if that zone is set to Prompt or Disable for "Allow active content over restricted protocols to access my computer."
# 
# If you disable or do not configure this policy setting for a zone, no protocols are restricted for that zone, regardless of the setting for "Allow active content over restricted protocols to access my computer."
# 
# Note.  If policy for a zone is set in both Computer Configuration and User Configuration, both lists of protocols will be restricted for that zone.
Internet Zone Restricted Protocols:
  lgpo.set:
  - name: IESF_NPLRest_InternetZone
  - setting:
      IESF_NPLRestrictionsList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
