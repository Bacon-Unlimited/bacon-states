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
