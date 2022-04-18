# SUPPORTED_IE9
#
# This policy setting allows you to disable browser geolocation support. This will prevent websites from requesting location data about the user.
# 
# If you enable this policy setting, browser geolocation support is turned off.
# 
# If you disable this policy setting, browser geolocation support is turned on.
# 
# If you do not configure this policy setting, browser geolocation support can be turned on or off in Internet Options on the Privacy tab.
Turn off browser geolocation:
  lgpo.set:
  - name: GeolocationDisable
  - setting: Enabled
  - policy_class: Machine
