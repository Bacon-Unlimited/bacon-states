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
# LOCATION: \User\Control Panel\Printers\PackagePointAndPrintOnly.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVistaOrServer2008Only
#
# This policy restricts clients computers to use package point and print only.
# 
# If this setting is enabled, users will only be able to point and print to printers that use package-aware drivers. When using package point and print, client computers will check the driver signature of all drivers that are downloaded from print servers.
# 
# If this setting is disabled, or not configured, users will not be restricted to package-aware point and print only.
Only use Package Point and print:
  lgpo.set:
  - name: PackagePointAndPrintOnly
  - setting: Enabled
  - policy_class: User
