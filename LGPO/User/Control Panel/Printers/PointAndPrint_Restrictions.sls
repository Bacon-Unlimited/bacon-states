# SUPPORTED_XPSP1_through_Server_2008_RTM
#
# This policy setting controls the client Point and Print behavior, including the security prompts for Windows Vista computers. The policy setting applies only to non-Print Administrator clients, and only to computers that are members of a domain.
# 
#           If you enable this policy setting:
#           -Windows XP and later clients will only download print driver components from a list of explicitly named servers. If a compatible print driver is available on the client, a printer connection will be made. If a compatible print driver is not available on the client, no connection will be made.
#           -You can configure Windows Vista clients so that security warnings and elevated command prompts do not appear when users Point and Print, or when printer connection drivers need to be updated.
# 
#           If you do not configure this policy setting:
#           -Windows Vista client computers can point and print to any server.
#           -Windows Vista computers will show a warning and an elevated command prompt when users create a printer connection to any server using Point and Print.
#           -Windows Vista computers will show a warning and an elevated command prompt when an existing printer connection driver needs to be updated.
#           -Windows Server 2003 and Windows XP client computers can create a printer connection to any server in their forest using Point and Print.
# 
#           If you disable this policy setting:
#           -Windows Vista client computers can create a printer connection to any server using Point and Print.
#           -Windows Vista computers will not show a warning or an elevated command prompt when users create a printer connection to any server using Point and Print.
#           -Windows Vista computers will not show a warning or an elevated command prompt when an existing printer connection driver needs to be updated.
#           -Windows Server 2003 and Windows XP client computers can create a printer connection to any server using Point and Print.
#           -The "Users can only point and print to computers in their forest" setting applies only to Windows Server 2003 and Windows XP SP1 (and later service packs).
Point and Print Restrictions:
  lgpo.set:
  - name: PointAndPrint_Restrictions
  - setting:
      PointAndPrint_NoWarningNoElevationOnInstall_Enum: enum-placeholder
      PointAndPrint_NoWarningNoElevationOnUpdate_Enum: enum-placeholder
      PointAndPrint_TrustedForest_Chk: boolean-placeholder
      PointAndPrint_TrustedServers_Chk: boolean-placeholder
      PointAndPrint_TrustedServers_Edit: text-placeholder
  - policy_class: User
