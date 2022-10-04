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
# LOCATION: \Computer\Windows Components\Windows Error Reporting\Advanced Error Reporting Settings\WerExlusion_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting limits Windows Error Reporting behavior for errors in general applications when Windows Error Reporting is turned on.
# 
# If you enable this policy setting, you can create a list of applications that are never included in error reports. To create a list of applications for which Windows Error Reporting never reports errors, click Show, and then add or remove applications from the list of application file names in the Show Contents dialog box (example: notepad.exe). File names must always include the .exe file name extension. To remove an application from the list, click the name, and then press DELETE. If this policy setting is enabled, the Exclude errors for applications on this list setting takes precedence.
# 
# If you disable or do not configure this policy setting, errors are reported on all Microsoft and Windows applications by default.
List of applications to be excluded:
  lgpo.set:
  - name: WerExlusion_2
  - setting:
      WerExlusionList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
