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
# LOCATION: \Computer\Printers\PrinterServerThread.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Announces the presence of shared printers to print browse master servers for the domain.
# 
# On domains with Active Directory, shared printer resources are available in Active Directory and are not announced.
# 
# If you enable this setting, the print spooler announces shared printers to the print browse master servers.
# 
# If you disable this setting, shared printers are not announced to print browse master servers, even if Active Directory is not available.
# 
# If you do not configure this setting, shared printers are announced to browse master servers only when Active Directory is not available.
# 
# Note: A client license is used each time a client computer announces a printer to a print browse master on the domain.
Printer browsing:
  lgpo.set:
  - name: PrinterServerThread
  - setting: Enabled
  - policy_class: Machine
