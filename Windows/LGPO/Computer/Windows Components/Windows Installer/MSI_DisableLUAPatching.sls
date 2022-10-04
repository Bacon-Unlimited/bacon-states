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
# LOCATION: \Computer\Windows Components\Windows Installer\MSI_DisableLUAPatching.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_MSI30
#
# This policy setting controls the ability of non-administrators to install updates that have been digitally signed by the application vendor.
# 
# Non-administrator updates provide a mechanism for the author of an application to create digitally signed updates that can be applied by non-privileged users.
# 
# If you enable this policy setting, only administrators or users with administrative privileges can apply updates to Windows Installer based applications.
# 
# If you disable or do not configure this policy setting, users without administrative privileges can install non-administrator updates.
Prohibit non-administrators from applying vendor signed updates:
  lgpo.set:
  - name: MSI_DisableLUAPatching
  - setting: Enabled
  - policy_class: Machine
