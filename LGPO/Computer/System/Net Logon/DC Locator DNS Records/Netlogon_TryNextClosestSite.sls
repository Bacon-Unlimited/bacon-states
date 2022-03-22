# windows:SUPPORTED_WindowsVista
#
# This policy setting enables DC Locator to attempt to locate a DC in the nearest site based on the site link cost if a DC in same the site is not found. In scenarios with multiple sites, failing over to the try next closest site during DC Location streamlines network traffic more effectively.
# 
# The DC Locator service is used by clients to find domain controllers for their Active Directory domain. The default behavior for DC Locator is to find a DC in the same site. If none are found in the same site, a DC in another site, which might be several site-hops away, could be returned by DC Locator. Site proximity between two sites is determined by the total site-link cost between them. A site is closer if it has a lower site link cost than another site with a higher site link cost. 
# 
# If you enable this policy setting, Try Next Closest Site DC Location will be turned on for the computer.
# 
# If you disable this policy setting, Try Next Closest Site DC Location will not be used by default for the computer. However, if a DC Locator call is made using the DS_TRY_NEXTCLOSEST_SITE flag explicitly, the Try Next Closest Site behavior is honored.
# 
# If you do not configure this policy setting, Try Next Closest Site DC Location will not be used by default for the machine. If the DS_TRY_NEXTCLOSEST_SITE flag is used explicitly, the Next Closest Site behavior will be used.
Try Next Closest Site:
  lgpo.set:
  - name: Netlogon_TryNextClosestSite
  - setting: Enabled
  - policy_class: Machine
