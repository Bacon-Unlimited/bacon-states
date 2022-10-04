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
# LOCATION: \Computer\Windows Components\Data Collection and Preview Builds\ConfigureTelemetryOptInChangeNotification.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS4
#
# 
#           This policy setting controls whether a device shows notifications about telemetry levels to people on first logon or when changes occur in Settings.
#           If you set this policy setting to "Disable telemetry change notifications", telemetry level notifications stop appearing.
#           If you set this policy setting to "Enable telemetry change notifications" or don't configure this policy setting, telemetry notifications appear at first logon and when changes occur in Settings.
#       
Configure telemetry opt-in change notifications.:
  lgpo.set:
  - name: ConfigureTelemetryOptInChangeNotification
  - setting:
      ConfigureTelemetryOptInChangeNotification: enum-placeholder
  - policy_class: Machine
