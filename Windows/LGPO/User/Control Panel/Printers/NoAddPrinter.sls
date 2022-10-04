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
# LOCATION: \User\Control Panel\Printers\NoAddPrinter.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Prevents users from using familiar methods to add local and network printers.
# 
#           If this policy setting is enabled, it removes the Add Printer option from the Start menu. (To find the Add Printer option, click Start, click Printers, and then click Add Printer.) This setting also removes Add Printer from the Printers folder in Control Panel.
# 
#           Also, users cannot add printers by dragging a printer icon into the Printers folder. If they try, a message appears explaining that the setting prevents the action.
# 
#           However, this setting does not prevent users from using the Add Hardware Wizard to add a printer. Nor does it prevent users from running other programs to add printers.
# 
#           This setting does not delete printers that users have already added. However, if users have not added a printer when this setting is applied, they cannot print.
# 
#           Note: You can use printer permissions to restrict the use of printers without specifying a setting. In the Printers folder, right-click a printer, click Properties, and then click the Security tab.
# 
#           If this policy is disabled, or not configured, users can add printers using the methods described above.
Prevent addition of printers:
  lgpo.set:
  - name: NoAddPrinter
  - setting: Enabled
  - policy_class: User
