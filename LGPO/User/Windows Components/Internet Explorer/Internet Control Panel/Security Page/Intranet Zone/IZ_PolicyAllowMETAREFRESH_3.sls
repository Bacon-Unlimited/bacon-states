# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether a user's browser can be redirected to another Web page if the author of the Web page uses the Meta Refresh setting (tag) to redirect browsers to another Web page.
# 
# If you enable this policy setting, a user's browser that loads a page containing an active Meta Refresh setting can be redirected to another Web page.
# 
# If you disable this policy setting, a user's browser that loads a page containing an active Meta Refresh setting cannot be redirected to another Web page.
# 
# If you do not configure this policy setting, a user's browser that loads a page containing an active Meta Refresh setting can be redirected to another Web page.
Allow META REFRESH:
  lgpo.set:
  - name: IZ_PolicyAllowMETAREFRESH_3
  - setting:
      IZ_Partname1608: enum-placeholder
  - policy_class: User
