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
# LOCATION: \User\Control Panel\DisallowCpls.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This setting allows you to display or hide specified Control Panel items, such as Mouse, System, or Personalization, from the Control Panel window and the Start screen. The setting affects the Start screen and Control Panel window, as well as other ways to access Control Panel items, such as shortcuts in Help and Support or command lines that use control.exe. This policy has no effect on items displayed in PC settings.
# 
# If you enable this setting, you can select specific items not to display on the Control Panel window and the Start screen.
# 
# To hide a Control Panel item, enable this policy setting and click Show to access the list of disallowed Control Panel items. In the Show Contents dialog box in the Value column, enter the Control Panel item's canonical name. For example, enter Microsoft.Mouse, Microsoft.System, or Microsoft.Personalization.
# 
# Note: For Windows Vista, Windows Server 2008, and earlier versions of Windows, the module name should be entered, for example timedate.cpl or inetcpl.cpl. If a Control Panel item does not have a CPL file, or the CPL file contains multiple applets, then its module name and string resource identification number should be entered, for example @systemcpl.dll,-1 for System, or @themecpl.dll,-1 for Personalization. A complete list of canonical and module names can be found in MSDN by searching "Control Panel items". 
# 
# If both the "Hide specified Control Panel items" setting and the "Show only specified Control Panel items" setting are enabled, the "Show only specified Control Panel items" setting is ignored.
# 
# Note: The Display Control Panel item cannot be hidden in the Desktop context menu by using this setting. To hide the Display Control Panel item and prevent users from modifying the computer's display settings use the "Disable Display Control Panel" setting instead.
# 
# Note: To hide pages in the System Settings app, use the "Settings Page Visibility" setting under Computer Configuration.
Hide specified Control Panel items:
  lgpo.set:
  - name: DisallowCpls
  - setting:
      DisallowCplsList:
      - placeholder1
      - placeholder2
  - policy_class: User
