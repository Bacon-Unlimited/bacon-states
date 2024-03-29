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
# LOCATION: \Computer\Windows Components\Microsoft Edge\PreventTurningOffRequiredExtensions.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_RS5
#
# You can define a list of extensions in Microsoft Edge that users cannot turn off. You must deploy extensions through any available enterprise deployment channel, such as Microsoft Intune. When you enable this policy, users cannot uninstall extensions from their computer, but they can configure options for extensions defined in this policy, such as allow for InPrivate browsing. Any additional permissions requested by future updates of the extension gets granted automatically.
# 
# When you enable this policy, you must provide a semi-colon delimited list of extension package family names (PFNs).  For example, adding Microsoft.OneNoteWebClipper_8wekyb3d8bbwe;Microsoft.OfficeOnline_8wekyb3d8bbwe  prevents a user from turning off the OneNote Web Clipper and Office Online extension.
# 
# When enabled, removing extensions from the list does not uninstall the extension from the users computer automatically. To uninstall the extension, use any available enterprise deployment channel.
# 
# If you enable the Allow Developer Tools policy, then this policy does not prevent users from debugging and altering the logic on an extension.
# 
# If disabled or not configured, extensions defined as part of this policy get ignored.
# 
# Default setting:  Disabled or not configured
# Related policies: Allow Developer Tools
# Related Documents:
# - Find a package family name (PFN) for per-app VPN (https://docs.microsoft.com/en-us/sccm/protect/deploy-use/find-a-pfn-for-per-app-vpn)
# - How to manage apps you purchased from the Microsoft Store for Business with Microsoft Intune (https://docs.microsoft.com/en-us/intune/windows-store-for-business)
# - How to assign apps to groups with Microsoft Intune (https://docs.microsoft.com/en-us/intune/apps-deploy)
# - Manage apps from the Microsoft Store for Business with System Center Configuration Manager  (https://docs.microsoft.com/en-us/sccm/apps/deploy-use/manage-apps-from-the-windows-store-for-business)
# - How to add Windows line-of-business (LOB) apps to Microsoft Intune (https://docs.microsoft.com/en-us/intune/lob-apps-windows)
Prevent turning off required extensions:
  lgpo.set:
  - name: PreventTurningOffRequiredExtensions
  - setting:
      PreventTurningOffRequiredExtensions_Prompt: text-placeholder
  - policy_class: Machine
