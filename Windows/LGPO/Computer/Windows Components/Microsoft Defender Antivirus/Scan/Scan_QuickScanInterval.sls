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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Scan\Scan_QuickScanInterval.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify an interval at which to perform a quick scan. The time value is represented as the number of hours between quick scans. Valid values range from 1 (every hour) to 24 (once per day). If set to zero, interval quick scans will not occur. By default, this setting is set to 0.
# 
#     If you enable this setting, a quick scan will run at the interval specified.
# 
#     If you disable or do not configure this setting, a quick scan will run at a default time.
Specify the interval to run quick scans per day:
  lgpo.set:
  - name: Scan_QuickScanInterval
  - setting:
      Scan_QuickScanInterval: decimal-placeholder
  - policy_class: Machine
