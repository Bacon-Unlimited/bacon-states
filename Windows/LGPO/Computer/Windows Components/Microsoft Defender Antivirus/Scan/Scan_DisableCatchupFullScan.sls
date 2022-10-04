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
# LOCATION: \Computer\Windows Components\Microsoft Defender Antivirus\Scan\Scan_DisableCatchupFullScan.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure catch-up scans for scheduled full scans. A catch-up scan is a scan that is initiated because a regularly scheduled scan was missed.  Usually these scheduled scans are missed because the computer was turned off at the scheduled time. 
# 
#     If you enable this setting, catch-up scans for scheduled full scans will be turned on.  If a computer is offline for two consecutive scheduled scans, a catch-up scan is started the next time someone logs on to the computer.  If there is no scheduled scan configured, there will be no catch-up scan run. 
# 
#     If you disable or do not configure this setting, catch-up scans for scheduled full scans will be turned off.
Turn on catch-up full scan:
  lgpo.set:
  - name: Scan_DisableCatchupFullScan
  - setting: Enabled
  - policy_class: Machine
