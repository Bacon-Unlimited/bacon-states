# windows:SUPPORTED_WindowsVista
#
# This policy setting prevents users from changing their user geographical location (GeoID).
# 
# If you enable this policy setting, users cannot change their GeoID.
# 
# If you disable or do not configure this policy setting, users may select any GeoID.
# 
# If you enable this policy setting at the computer level, it cannot be disabled by a per-user policy setting. If you disable this policy setting at the computer level, the per-user policy is ignored. If you do not configure this policy setting at the computer level, restrictions are based on per-user policy settings.
# 
# To set this policy setting on a per-user basis, make sure that the per-computer policy setting is not configured.
Disallow changing of geographic location:
  lgpo.set:
  - name: PreventGeoIdChange_2
  - setting: Enabled
  - policy_class: Machine
