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
# LOCATION: \Computer\Windows Components\Windows Installer\DisableLoggingFromPackage.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_MSI40
#
# This policy setting controls Windows Installer's processing of the MsiLogging property. The MsiLogging property in an installation package can be used to enable automatic logging of all install operations for the package.
# 
# If you enable this policy setting, you can use the options in the Disable logging via package settings box to control automatic logging via package settings behavior.
# 
# -- The "Logging via package settings on" option instructs Windows Installer to automatically generate log files for packages that include the MsiLogging property.
# 
# -- The "Logging via package settings off" option turns off the automatic logging behavior when specified via the MsiLogging policy. Log files can still be generated using the logging command line switch or the Logging policy.
# 
# If you disable or do not configure this policy setting, Windows Installer will automatically generate log files for those packages that include the MsiLogging property.
Turn off logging via package settings:
  lgpo.set:
  - name: DisableLoggingFromPackage
  - setting:
      DisableLoggingFromPackage: enum-placeholder
  - policy_class: Machine
