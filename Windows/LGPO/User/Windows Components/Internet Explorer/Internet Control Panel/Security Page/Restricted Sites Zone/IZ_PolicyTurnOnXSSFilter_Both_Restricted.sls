# SUPPORTED_IE8
#
# This policy controls whether or not the Cross-Site Scripting (XSS) Filter will detect and prevent cross-site script injections into websites in this zone.
# 
# If you enable this policy setting, the XSS Filter is turned on for sites in this zone, and the XSS Filter attempts to block cross-site script injections.
# 
# If you disable this policy setting, the XSS Filter is turned off for sites in this zone, and Internet Explorer permits cross-site script injections.
Turn on Cross-Site Scripting Filter:
  lgpo.set:
  - name: IZ_PolicyTurnOnXSSFilter_Both_Restricted
  - setting:
      IZ_Partname1409: enum-placeholder
  - policy_class: User
