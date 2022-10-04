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
# LOCATION: \Computer\Windows Components\Data Collection and Preview Builds\DisableEnterpriseAuthProxy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# This policy setting blocks the Connected User Experience and Telemetry service from automatically using an authenticated proxy to send data back to Microsoft on Windows 10. If you disable or do not configure this policy setting, the Connected User Experience and Telemetry service will automatically use an authenticated proxy to send data back to Microsoft. Enabling this policy will block the Connected User Experience and Telemetry service from automatically using an authenticated proxy.
Configure Authenticated Proxy usage for the Connected User Experience and Telemetry service:
  lgpo.set:
  - name: DisableEnterpriseAuthProxy
  - setting:
      DisableEnterpriseAuthProxy: enum-placeholder
  - policy_class: Machine
