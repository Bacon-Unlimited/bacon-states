# SUPPORTED_IE7
#
# This policy setting controls the first-run response that the user sees on a zone-by-zone basis. When the user encounters a new control that has not previously run in Internet Explorer, he or she may be prompted to approve the control. This policy setting determines whether the user is prompted.
# 
# If you enable this policy setting, the first-run prompt is turned off in the corresponding zone.
# 
# If you disable this policy setting, the first-run prompt is turned on in the corresponding zone.
# 
# If you do not configure this policy setting, the first-run prompt is turned off by default.
Turn off first-run prompt:
  lgpo.set:
  - name: IZ_Policy_FirstRunOptIn_7
  - setting:
      IZ_Partname1208: enum-placeholder
  - policy_class: User
