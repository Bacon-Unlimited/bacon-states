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
# LOCATION: \Computer\Printers\AllowWebPrinting.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2kOnly
#
# Internet printing lets you display printers on Web pages so that printers can be viewed, managed, and used across the Internet or an intranet.
# 
#           If you enable this policy setting, Internet printing is activated on this server.
# 
#           If you disable this policy setting or do not configure it, Internet printing is not activated.
# 
#           Internet printing is an extension of Internet Information Services (IIS). To use Internet printing, IIS must be installed, and printing support and this setting must be enabled.
# 
#           Note: This setting affects the server side of Internet printing only. It does not prevent the print client on the computer from printing across the Internet.
# 
#           Also, see the "Custom support URL in the Printers folder's left pane" setting in this folder and the "Browse a common Web site to find printers" setting in User Configuration\Administrative Templates\Control Panel\Printers.
Activate Internet printing:
  lgpo.set:
  - name: AllowWebPrinting
  - setting: Enabled
  - policy_class: Machine
