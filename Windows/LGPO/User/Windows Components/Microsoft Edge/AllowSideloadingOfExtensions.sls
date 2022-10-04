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
# LOCATION: \User\Windows Components\Microsoft Edge\AllowSideloadingOfExtensions.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_RS5
#
# Sideloading installs and runs unverified extensions in Microsoft Edge. With this policy, you can specify whether unverified extensions can be sideloaded in Microsoft Edge.
# 
# If enabled or not configured, sideloading of unverified extensions in Microsoft Edge is allowed.
# 
# If disabled, sideloading of unverified extensions in Microsoft Edge is not allowed. Extensions can be installed only through Microsoft store (including a store for business), enterprise storefront (such as Company Portal) or PowerShell (using Add-AppxPackage).  When disabled, this policy does not prevent sideloading of extensions using Add-AppxPackage via PowerShell. To prevent this, in Group Policy Editor, enable Allows development of Windows Store apps and installing them from an integrated development environment (IDE), which is located at:
# 
# Computer Configuration > Administrative Templates > Windows Components > App Package Deployment
# 
# Supported versions: Microsoft Edge on Windows 10, version 1809
# Default setting: Disabled or not configured
# Related policies:
# - Allows development of Windows Store apps and installing them from an integrated development environment (IDE)
# - Allow all trusted apps to install
Allow Sideloading of extension:
  lgpo.set:
  - name: AllowSideloadingOfExtensions
  - setting: Enabled
  - policy_class: User
