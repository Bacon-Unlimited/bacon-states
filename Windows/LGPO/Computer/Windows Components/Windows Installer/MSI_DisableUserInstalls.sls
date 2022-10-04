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
# LOCATION: \Computer\Windows Components\Windows Installer\MSI_DisableUserInstalls.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_MSI15
#
# This policy setting allows you to configure user installs. To configure this policy setting, set it to enabled and use the drop-down list to select the behavior you want.
# 
# If you do not configure this policy setting, or if the policy setting is enabled and "Allow User Installs" is selected, the installer allows and makes use of products that are installed per user, and products that are installed per computer. If the installer finds a per-user install of an application, this hides a per-computer installation of that same product.
# 
# If you enable this policy setting and "Hide User Installs" is selected, the installer ignores per-user applications. This causes a per-computer installed application to be visible to users, even if those users have a per-user install of the product registered in their user profile.
Prohibit User Installs:
  lgpo.set:
  - name: MSI_DisableUserInstalls
  - setting:
      MSI_DisableUserInstallsBox: enum-placeholder
  - policy_class: Machine
