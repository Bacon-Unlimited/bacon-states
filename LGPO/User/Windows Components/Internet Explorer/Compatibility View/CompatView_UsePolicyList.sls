# SUPPORTED_IE8
#
# This policy setting allows you to add specific sites that must be viewed in Internet Explorer 7 Compatibility View.
# 
# If you enable this policy setting, the user can add and remove sites from the list, but the user cannot remove the entries that you specify.
# 
# If you disable or do not configure this policy setting, the user can add and remove sites from the list.
Use Policy List of Internet Explorer 7 sites:
  lgpo.set:
  - name: CompatView_UsePolicyList
  - setting:
      CompatView_SiteList:
      - placeholder1
      - placeholder2
  - policy_class: User
