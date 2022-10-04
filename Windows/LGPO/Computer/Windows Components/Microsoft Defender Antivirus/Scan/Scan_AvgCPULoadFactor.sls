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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Scan\Scan_AvgCPULoadFactor.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure the maximum percentage CPU utilization permitted during a scan. Valid values for this setting are a percentage represented by the integers 5 to 100. A value of 0 indicates that there should be no throttling of CPU utilization. The default value is 50.
# 
#     If you enable this setting, CPU utilization will not exceed the percentage specified.
# 
#     If you disable or do not configure this setting, CPU utilization will not exceed the default value.
Specify the maximum percentage of CPU utilization during a scan:
  lgpo.set:
  - name: Scan_AvgCPULoadFactor
  - setting:
      Scan_AvgCPULoadFactor: decimal-placeholder
  - policy_class: Machine
