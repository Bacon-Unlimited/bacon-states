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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Scan\Scan_MissedScheduledScanCountBeforeCatchup.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# 
#     This policy setting allows you to define the number of consecutive scheduled scans that can be missed after which a catch-up scan will be forced. By default, the value of this setting is 2 consecutive scheduled scans.
# 
#     If you enable this setting, a catch-up scan will occur after the specified number consecutive missed scheduled scans.
# 
#     If you disable or do not configure this setting, a catch-up scan will occur after the 2 consecutive missed scheduled scans.
Define the number of days after which a catch-up scan is forced:
  lgpo.set:
  - name: Scan_MissedScheduledScanCountBeforeCatchup
  - setting:
      Scan_MissedScheduledScanCountBeforeCatchup: decimal-placeholder
  - policy_class: Machine
