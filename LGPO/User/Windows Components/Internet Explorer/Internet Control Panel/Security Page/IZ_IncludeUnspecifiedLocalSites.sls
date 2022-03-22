# SUPPORTED_IE6SP2
#
# This policy setting controls whether local sites which are not explicitly mapped into any Security Zone are forced into the local Intranet security zone.
# 
# If you enable this policy setting, local sites which are not explicitly mapped into a zone are considered to be in the Intranet Zone.
# 
# If you disable this policy setting, local sites which are not explicitly mapped into a zone will not be considered to be in the Intranet Zone (so would typically be in the Internet Zone).
# 
# If you do not configure this policy setting, users choose whether to force local sites into the Intranet Zone.
'Intranet Sites: Include all local (intranet) sites not listed in other zones':
  lgpo.set:
  - name: IZ_IncludeUnspecifiedLocalSites
  - setting: Enabled
  - policy_class: User
