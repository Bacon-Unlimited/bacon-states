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
# LOCATION: \User\Control Panel\Printers\DownlevelBrowse.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Allows users to use the Add Printer Wizard to search the network for shared printers.
# 
# If you enable this setting or do not configure it, when users choose to add a network printer by selecting the "A network printer, or a printer attached to another computer" radio button on Add Printer Wizard's page 2, and also check the "Connect to this printer (or to browse for a printer, select this option and click Next)" radio button on Add Printer Wizard's page 3, and do not specify a printer name in the adjacent "Name" edit box, then Add Printer Wizard displays the list of shared printers on the network and invites to choose a printer from the shown list.
# 
# If you disable this setting, the network printer browse page is removed from within the Add Printer Wizard, and users cannot search the network but must type a printer name.
# 
# Note: This setting affects the Add Printer Wizard only. It does not prevent users from using other programs to search for shared printers or to connect to network printers.
Browse the network to find printers:
  lgpo.set:
  - name: DownlevelBrowse
  - setting: Enabled
  - policy_class: User
