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
# LOCATION: \User\Control Panel\Printers\IntranetPrintersUrl.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# Adds a link to an Internet or intranet Web page to the Add Printer Wizard.
# 
#           You can use this setting to direct users to a Web page from which they can install printers.
# 
#           If you enable this setting and type an Internet or intranet address in the text box, the system adds a Browse button to the "Specify a Printer" page in the Add Printer Wizard. The Browse button appears beside the "Connect to a printer on the Internet or on a home or office network" option. When users click Browse, the system opens an Internet browser and navigates to the specified URL address to display the available printers.
# 
#           This setting makes it easy for users to find the printers you want them to add.
# 
#           Also, see the "Custom support URL in the Printers folder's left pane" and "Activate Internet printing" settings in "Computer Configuration\Administrative Templates\Printers."
Browse a common web site to find printers:
  lgpo.set:
  - name: IntranetPrintersUrl
  - setting:
      IntranetPrintersUrl_Link: text-placeholder
  - policy_class: User
