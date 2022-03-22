# SUPPORTED_IE8
#
# This policy setting allows you to manage whether documents can request data across third-party domains embedded in the page.
# 
# If you enable this policy setting, documents cannot request data across third-party domains embedded in the page.
# 
# If you disable or do not configure this policy setting, documents can request data across third-party domains embedded in the page.
Turn off cross-document messaging:
  lgpo.set:
  - name: IESF_DisableXDM
  - setting: Enabled
  - policy_class: User
