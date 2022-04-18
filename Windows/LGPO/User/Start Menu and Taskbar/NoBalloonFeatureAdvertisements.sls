# windows:SUPPORTED_Windows7
#
# This policy setting allows you to turn off feature advertisement balloon notifications.
# 
# If you enable this policy setting, certain notification balloons that are marked as feature advertisements are not shown.
# 
# If you disable do not configure this policy setting, feature advertisement balloons are shown.
Turn off feature advertisement balloon notifications:
  lgpo.set:
  - name: NoBalloonFeatureAdvertisements
  - setting: Enabled
  - policy_class: User
