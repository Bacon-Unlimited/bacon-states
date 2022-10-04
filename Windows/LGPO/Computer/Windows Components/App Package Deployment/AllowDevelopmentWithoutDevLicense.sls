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
# LOCATION: \Computer\Windows Components\App Package Deployment\AllowDevelopmentWithoutDevLicense.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# 
#         Allows or denies development of Windows Store applications and installing them directly from an IDE.
# 
#         If you enable this setting and enable the "Allow all trusted apps to install" Group Policy, you can develop Windows Store apps and install them directly from an IDE.
# 
#         If you disable or do not configure this setting, you cannot develop Windows Store apps or install them directly from an IDE.
#       
Allows development of Windows Store apps and installing them from an integrated development environment (IDE):
  lgpo.set:
  - name: AllowDevelopmentWithoutDevLicense
  - setting: Enabled
  - policy_class: Machine
