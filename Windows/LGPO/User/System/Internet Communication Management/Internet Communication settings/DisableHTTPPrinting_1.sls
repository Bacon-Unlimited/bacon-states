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
# LOCATION: \User\System\Internet Communication Management\Internet Communication settings\DisableHTTPPrinting_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting specifies whether to allow printing over HTTP from this client.
# 
# Printing over HTTP allows a client to print to printers on the intranet as well as the Internet.
# 
# Note: This policy setting affects the client side of Internet printing only. It does not prevent this computer from acting as an Internet Printing server and making its shared printers available via HTTP.
# 
# If you enable this policy setting, it prevents this client from printing to Internet printers over HTTP.
# 
# If you disable or do not configure this policy setting, users can choose to print to Internet printers over HTTP.
# 
# Also, see the "Web-based printing" policy setting in Computer Configuration/Administrative Templates/Printers.
Turn off printing over HTTP:
  lgpo.set:
  - name: DisableHTTPPrinting_1
  - setting: Enabled
  - policy_class: User
