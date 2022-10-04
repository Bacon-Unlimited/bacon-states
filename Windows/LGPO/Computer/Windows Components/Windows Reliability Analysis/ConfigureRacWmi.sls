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
# LOCATION: \Computer\Windows Components\Windows Reliability Analysis\ConfigureRacWmi.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting allows the Windows Management Instrumentation (WMI) providers Win32_ReliabilityStabilitymetrics and Win32_ReliabilityRecords to provide data to Reliability Monitor in the Security and Maintenance control panel, and to respond to WMI requests.
# 
# If you enable or do not configure this policy setting, the listed providers will respond to WMI queries, and Reliability Monitor will display system reliability information.
# 
# If you disable this policy setting, Reliability Monitor will not display system reliability information, and WMI-capable applications will be unable to access reliability information from the listed providers.
Configure Reliability WMI Providers:
  lgpo.set:
  - name: ConfigureRacWmi
  - setting: Enabled
  - policy_class: Machine
