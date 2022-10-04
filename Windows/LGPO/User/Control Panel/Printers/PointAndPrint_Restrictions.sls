####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \User\Control Panel\Printers\PointAndPrint_Restrictions.sls
#
# SUPPORTED WINDOWS OS
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
