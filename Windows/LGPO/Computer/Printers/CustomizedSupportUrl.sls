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
# LOCATION: \Computer\Printers\CustomizedSupportUrl.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# By default, the Printers folder includes a link to the Microsoft Support Web page called "Get help with printing". It can also include a link to a Web page supplied by the vendor of the currently selected printer.
# 
#           If you enable this policy setting, you replace the "Get help with printing" default link with a link to a Web page customized for your enterprise.
# 
#           If you disable this setting or do not configure it, or if you do not enter an alternate Internet address, the default link will appear in the Printers folder.
# 
#           Note: Web pages links only appear in the Printers folder when Web view is enabled. If Web view is disabled, the setting has no effect. (To enable Web view, open the Printers folder, and, on the Tools menu, click Folder Options, click the General tab, and then click "Enable Web content in folders.")
# 
#           Also, see the "Activate Internet printing" setting in this setting folder and the "Browse a common web site to find printers" setting in User Configuration\Administrative Templates\Control Panel\Printers.
# 
#           Web view is affected by the "Turn on Classic Shell" and "Do not allow Folder Options to be opened from the Options button on the View tab of the ribbon" settings in User Configuration\Administrative Templates\Windows Components\Windows Explorer, and by the "Enable Active Desktop" setting in User Configuration\Administrative Templates\Desktop\Active Desktop.
Custom support URL in the Printers folder's left pane:
  lgpo.set:
  - name: CustomizedSupportUrl
  - setting:
      CustomizedSupportUrl_Link: text-placeholder
  - policy_class: Machine
