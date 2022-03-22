# windows:SUPPORTED_Win2k
#
# This policy setting controls which Control Panel items such as Mouse, System, or Personalization, are displayed on the Control Panel window and the Start screen. The only items displayed in Control Panel are those you specify in this setting. This setting affects the Start screen and Control Panel, as well as other ways to access Control Panel items such as shortcuts in Help and Support or command lines that use control.exe. This policy has no effect on items displayed in PC settings.
# 
# To display a Control Panel item, enable this policy setting and click Show to access the list of allowed Control Panel items. In the Show Contents dialog box in the Value column, enter the Control Panel item's canonical name. For example, enter Microsoft.Mouse, Microsoft.System, or Microsoft.Personalization.
# 
# Note: For Windows Vista, Windows Server 2008, and earlier versions of Windows, the module name, for example timedate.cpl or inetcpl.cpl, should be entered. If a Control Panel item does not have a CPL file, or the CPL file contains multiple applets, then its module name and string resource identification number should be entered. For example, enter @systemcpl.dll,-1 for System or @themecpl.dll,-1 for Personalization. A complete list of canonical and module names of Control Panel items can be found in MSDN by searching "Control Panel items".
# 
# If both the "Hide specified Control Panel items" setting and the "Show only specified Control Panel items" setting are enabled, the "Show only specified Control Panel items" setting is ignored.
# 
# Note: The Display Control Panel item cannot be hidden in the Desktop context menu by using this setting. To hide the Display Control Panel item and prevent users from modifying the computer's display settings use the "Disable Display Control Panel" setting instead.
# 
# Note: To hide pages in the System Settings app, use the "Settings Page Visibility" setting under Computer Configuration.
Show only specified Control Panel items:
  lgpo.set:
  - name: RestrictCpls
  - setting:
      RestrictCplsList:
      - placeholder1
      - placeholder2
  - policy_class: User
