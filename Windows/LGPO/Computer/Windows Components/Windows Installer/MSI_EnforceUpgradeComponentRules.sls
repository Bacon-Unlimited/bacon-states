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
# LOCATION: \Computer\Windows Components\Windows Installer\MSI_EnforceUpgradeComponentRules.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_MSI30
#
# This policy setting causes the Windows Installer to enforce strict rules for component upgrades.
# 
# If you enable this policy setting, strict upgrade rules will be enforced by the Windows Installer which may cause some upgrades to fail. Upgrades can fail if they attempt to do one of the following:
# 
# (1) Remove a component from a feature.
# This can also occur if you change the GUID of a component. The component identified by the original GUID appears to be removed and the component as identified by the new GUID appears as a new component.
# 
# (2) Add a new feature to the top or middle of an existing feature tree.
# The new feature must be added as a new leaf feature to an existing feature tree.
# 
# If you disable or do not configure this policy setting, the Windows Installer will use less restrictive rules for component upgrades.
Enforce upgrade component rules:
  lgpo.set:
  - name: MSI_EnforceUpgradeComponentRules
  - setting: Enabled
  - policy_class: Machine
