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
# LOCATION: \Computer\Windows Components\Windows Error Reporting\Advanced Error Reporting Settings\WerCER.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies a corporate server to which Windows Error Reporting sends reports (if you do not want to send error reports to Microsoft).
# 
# If you enable this policy setting, you can specify the name or IP address of an error report destination server on your organizations network. You can also select Connect using SSL to transmit error reports over a Secure Sockets Layer (SSL) connection, and specify a port number on the destination server for transmission.
# 
# If you disable or do not configure this policy setting, Windows Error Reporting sends error reports to Microsoft.
Configure Corporate Windows Error Reporting:
  lgpo.set:
  - name: WerCER
  - setting:
      WerCERCorporatePortNumber: decimal-placeholder
      WerCERServer: text-placeholder
      WerCERUseSSL: boolean-placeholder
      WerCerUploadOnFreeNetworksOnly: boolean-placeholder
  - policy_class: Machine
