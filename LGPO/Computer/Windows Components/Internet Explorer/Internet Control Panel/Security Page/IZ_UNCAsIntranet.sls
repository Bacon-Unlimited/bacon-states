# SUPPORTED_IE6SP2
#
# This policy setting controls whether URLs representing UNCs are mapped into the local Intranet security zone.
# 
# If you enable this policy setting, all network paths are mapped into the Intranet Zone.
# 
# If you disable this policy setting, network paths are not necessarily mapped into the Intranet Zone (other rules might map one there).
# 
# If you do not configure this policy setting, users choose whether network paths are mapped into the Intranet Zone.
'Intranet Sites: Include all network paths (UNCs)':
  lgpo.set:
  - name: IZ_UNCAsIntranet
  - setting: Enabled
  - policy_class: Machine
