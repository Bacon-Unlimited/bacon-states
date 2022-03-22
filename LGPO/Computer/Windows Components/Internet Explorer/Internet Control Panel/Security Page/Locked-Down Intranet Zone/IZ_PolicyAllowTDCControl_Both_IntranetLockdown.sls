# SUPPORTED_IE11WIN10_1607
#
# This policy setting controls whether or not the user is allowed to run the TDC ActiveX control on websites.
# 
# If you enable this policy setting, the TDC ActiveX control will not run from websites in this zone.
# 
# If you disable this policy setting, the TDC Active X control will run from all sites in this zone.
Allow only approved domains to use the TDC ActiveX control:
  lgpo.set:
  - name: IZ_PolicyAllowTDCControl_Both_IntranetLockdown
  - setting:
      IZ_Partname120c: enum-placeholder
  - policy_class: Machine
