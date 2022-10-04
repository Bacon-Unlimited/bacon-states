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
# LOCATION: \Computer\Windows Components\Windows Error Reporting\Advanced Error Reporting Settings\PCH_AllOrNoneInc.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET_XP
#
# This policy setting specifies applications for which Windows Error Reporting should always report errors.
# 
# To create a list of applications for which Windows Error Reporting never reports errors, click Show under the Exclude errors for applications on this list setting, and then add or remove applications from the list of application file names in the Show Contents dialog box (example: notepad.exe). Errors that are generated by applications in this list are not reported, even if the Default Application Reporting Settings policy setting is configured to report all application errors.
# 
# If you enable this policy setting, you can create a list of applications that are always included in error reporting. To add applications to the list, click Show under the Report errors for applications on this list setting, and edit the list of application file names in the Show Contents dialog box. The file names must include the .exe file name extension (for example, notepad.exe). Errors that are generated by applications on this list are always reported, even if the Default dropdown in the Default application reporting policy setting is set to report no application errors.
# 
# If the Report all errors in Microsoft applications or Report all errors in Windows components check boxes in the Default Application Reporting policy setting are filled, Windows Error Reporting reports errors as if all applications in these categories were added to the list in this policy setting. (Note: The Microsoft applications category includes the Windows components category.)
# 
# If you disable this policy setting or do not configure it, the Default application reporting settings policy setting takes precedence.
# 
# Also see the ""Default Application Reporting"" and ""Application Exclusion List"" policies.
# 
# This setting will be ignored if the 'Configure Error Reporting' setting is disabled or not configured.
List of applications to always report errors for:
  lgpo.set:
  - name: PCH_AllOrNoneInc
  - setting:
      PCH_AllOrNoneInc_List:
      - placeholder1
      - placeholder2
  - policy_class: Machine