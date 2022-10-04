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
# LOCATION: \Computer\Windows Components\Windows Installer\DisableSharedComponent.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_MSI45
#
# This policy setting controls the ability to turn off shared components.
# 
# If you enable this policy setting, no packages on the system get the shared component functionality enabled by the msidbComponentAttributesShared attribute in the Component Table.
# 
# If you disable or do not configure this policy setting, by default, the shared component functionality is allowed.
Turn off shared components:
  lgpo.set:
  - name: DisableSharedComponent
  - setting: Enabled
  - policy_class: Machine
