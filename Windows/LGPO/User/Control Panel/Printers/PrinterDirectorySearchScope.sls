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
# LOCATION: \User\Control Panel\Printers\PrinterDirectorySearchScope.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Specifies the Active Directory location where searches for printers begin.
# 
#           The Add Printer Wizard gives users the option of searching Active Directory for a shared printer.
# 
#           If you enable this policy setting, these searches begin at the location you specify in the "Default Active Directory path" box. Otherwise, searches begin at the root of Active Directory.
# 
#           This setting only provides a starting point for Active Directory searches for printers. It does not restrict user searches through Active Directory.
Default Active Directory path when searching for printers:
  lgpo.set:
  - name: PrinterDirectorySearchScope
  - setting:
      PrinterDirectorySearchScope_Name: text-placeholder
  - policy_class: User
