# windows:SUPPORTED_Windows7
#
# This policy setting disallows AutoPlay for MTP devices like cameras or phones.
# 
#           If you enable this policy setting, AutoPlay is not allowed for MTP devices like cameras or phones.
# 
#           If you disable or do not configure this policy setting, AutoPlay is enabled for non-volume devices.
Disallow Autoplay for non-volume devices:
  lgpo.set:
  - name: NoAutoplayfornonVolume
  - setting: Enabled
  - policy_class: Machine
