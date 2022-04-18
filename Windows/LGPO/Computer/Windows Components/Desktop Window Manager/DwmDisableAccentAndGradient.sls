# windows:SUPPORTED_Windows8
#
# This policy setting controls the Start background visuals.
# 
# If you enable this policy setting, the Start background will use a solid color.
# 
# If you disable or do not configure this policy setting, the Start background will use the default visuals.
# 
# Note: If this policy setting is enabled, users can continue to select a color in Start Personalization. However, setting the accent will have no effect.
Use solid color for Start background:
  lgpo.set:
  - name: DwmDisableAccentAndGradient
  - setting: Enabled
  - policy_class: Machine
