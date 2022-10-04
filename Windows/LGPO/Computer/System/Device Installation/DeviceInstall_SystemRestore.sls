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
# LOCATION: \Computer\System\Device Installation\DeviceInstall_SystemRestore.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to prevent Windows from creating a system restore point during device activity that would normally prompt Windows to create a system restore point. Windows normally creates restore points for certain driver activity, such as the installation of an unsigned driver. A system restore point enables you to more easily restore your system to its state before the activity. 
# 
# If you enable this policy setting, Windows does not create a system restore point when one would normally be created.
# 
# If you disable or do not configure this policy setting, Windows creates a system restore point as it normally would.
Prevent creation of a system restore point during device activity that would normally prompt creation of a restore point:
  lgpo.set:
  - name: DeviceInstall_SystemRestore
  - setting: Enabled
  - policy_class: Machine
