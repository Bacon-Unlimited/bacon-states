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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\ProxyServer.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure the named proxy that should be used when the client attempts to connect to the network for security intelligence updates and MAPS reporting. If the named proxy fails or if there is no proxy specified, the client will fall back to the alternative options (in order):
#       1. Proxy server (if specified)
#       2. Proxy .pac URL (if specified)
#       3. None
#       4. Internet Explorer proxy settings
#       5. Autodetect
# 
#       If you enable this setting, the proxy will be set to the specified URL according to the order specified above. The URL should be proceeded with either http:// or https://.
# 
#       If you disable or do not configure this setting, the proxy will skip over this fallback step according to the order specified above.
#     
Define proxy server for connecting to the network:
  lgpo.set:
  - name: ProxyServer
  - setting:
      ProxyServer: text-placeholder
  - policy_class: Machine
