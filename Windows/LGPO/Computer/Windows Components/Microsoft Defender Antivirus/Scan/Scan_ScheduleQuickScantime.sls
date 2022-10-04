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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Scan\Scan_ScheduleQuickScantime.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify the time of day at which to perform a daily quick scan. The time value is represented as the number of minutes past midnight (00:00).  For example, 120 (0x78) is equivalent to 02:00 AM. By default, this setting is set to  a time value of 2:00 AM. The schedule is based on local time on the computer where the scan is executing.
# 
#     If you enable this setting, a daily quick scan will run at the time of day specified.
# 
#     If you disable or do not configure this setting, a daily quick scan will run at a default time.
Specify the time for a daily quick scan:
  lgpo.set:
  - name: Scan_ScheduleQuickScantime
  - setting:
      Scan_ScheduleQuickScantime: decimal-placeholder
  - policy_class: Machine
