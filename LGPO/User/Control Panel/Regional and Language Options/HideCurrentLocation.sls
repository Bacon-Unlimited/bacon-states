# windows:SUPPORTED_WindowsVista
#
# This policy setting removes the option to change the user's geographical location (GeoID) from the Region settings control panel.
# 
# This policy setting is used only to simplify the Regional Options control panel.
# 
# If you enable this policy setting, the user does not see the option to change the GeoID. This does not prevent the user or an application from changing the GeoID programmatically.
# 
# If you disable or do not configure this policy setting, the user sees the option for changing the user location (GeoID).
# 
# Note: Even if a user can see the GeoID option, the "Disallow changing of geographical location" option can prevent them from actually changing their current geographical location.
Hide the geographic location option:
  lgpo.set:
  - name: HideCurrentLocation
  - setting: Enabled
  - policy_class: User
