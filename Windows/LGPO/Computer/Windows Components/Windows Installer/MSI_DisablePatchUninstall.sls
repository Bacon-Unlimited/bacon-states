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
# LOCATION: \Computer\Windows Components\Windows Installer\MSI_DisablePatchUninstall.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_MSI30
#
# This policy setting controls the ability for users or administrators to remove Windows Installer based updates.
# 
# This policy setting should be used if you need to maintain a tight control over updates. One example is a lockdown environment where you want to ensure that updates once installed cannot be removed by users or administrators.
# 
# If you enable this policy setting, updates cannot be removed from the computer by a user or an administrator. The Windows Installer can still remove an update that is no longer applicable to the product.
# 
# If you disable or do not configure this policy setting, a user can remove an update from the computer only if the user has been granted privileges to remove the update. This can depend on whether the user is an administrator, whether "Disable Windows Installer" and "Always install with elevated privileges" policy settings are set, and whether the update was installed in a per-user managed, per-user unmanaged, or per-machine context."
Prohibit removal of updates:
  lgpo.set:
  - name: MSI_DisablePatchUninstall
  - setting: Enabled
  - policy_class: Machine
