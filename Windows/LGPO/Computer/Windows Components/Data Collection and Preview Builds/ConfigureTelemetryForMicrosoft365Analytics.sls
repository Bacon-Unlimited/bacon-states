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
# LOCATION: \Computer\Windows Components\Data Collection and Preview Builds\ConfigureTelemetryForMicrosoft365Analytics.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_RS4
#
# You can configure Microsoft Edge to send intranet history only, internet history only, or both to Desktop Analytics for enterprise devices with a configured Commercial ID. If disabled or not configured, Microsoft Edge does not send browsing history data to Desktop Analytics.
# 
# Supported versions: Microsoft Edge on Windows 10, version 1809
# Default setting: Disabled or not configured (no data collected or sent)
Configure collection of browsing data for Desktop Analytics:
  lgpo.set:
  - name: ConfigureTelemetryForMicrosoft365Analytics
  - setting:
      ZonesListBox: enum-placeholder
  - policy_class: Machine
