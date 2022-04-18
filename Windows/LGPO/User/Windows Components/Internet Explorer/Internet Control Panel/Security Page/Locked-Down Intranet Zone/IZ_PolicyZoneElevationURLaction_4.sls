# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether Web sites from less privileged zones, such as Internet sites, can navigate into this zone.
# 
# If you enable this policy setting, Web sites from less privileged zones can open new windows in, or navigate into, this zone. The security zone will run without the added layer of security that is provided by the Protection from Zone Elevation security feature. If you select Prompt in the drop-down box, a warning is issued to the user that potentially risky navigation is about to occur.
# 
# If you disable this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.
# 
# If you do not configure this policy setting, the possibly harmful navigations are prevented. The Internet Explorer security feature will be on in this zone as set by Protection from Zone Elevation feature control.
Web sites in less privileged Web content zones can navigate into this zone:
  lgpo.set:
  - name: IZ_PolicyZoneElevationURLaction_4
  - setting:
      IZ_Partname2101: enum-placeholder
  - policy_class: User
