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
# LOCATION: \Computer\System\Windows File Protection\WFPScan.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsPreVista
#
# This policy setting allows you to set when Windows File Protection scans protected files. This policy setting directs Windows File Protection to enumerate and scan all system files for changes.
# 
# If you enable this policy setting, select a rate from the "Scanning Frequency" box. You can use this setting to direct Windows File Protection to scan files more often.
# 
# --  "Do not scan during startup," the default, scans files only during setup.
# 
# --  "Scan during startup" also scans files each time you start Windows XP. This setting delays each startup.
# 
# If you disable or do not configure this policy setting, by default, files are scanned only during setup.
# 
# Note: This policy setting affects file scanning only. It does not affect the standard background file change detection that Windows File Protection provides.
Set Windows File Protection scanning:
  lgpo.set:
  - name: WFPScan
  - setting:
      WFPScanList: enum-placeholder
  - policy_class: Machine
