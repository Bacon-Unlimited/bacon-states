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
# LOCATION: \Computer\Printers\V4DriverDisallowPrinterExtension.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy determines if v4 printer drivers are allowed to run printer extensions.
# 
#         V4 printer drivers may include an optional, customized user interface known as a printer extension. These extensions may provide access to more device features, but this may not be appropriate for all enterprises.
# 
#         If you enable this policy setting, then all printer extensions will not be allowed to run.
# 
#         If you disable this policy setting or do not configure it, then all printer extensions that have been installed will be allowed to run.
Do not allow v4 printer drivers to show printer extensions:
  lgpo.set:
  - name: V4DriverDisallowPrinterExtension
  - setting: Enabled
  - policy_class: Machine
