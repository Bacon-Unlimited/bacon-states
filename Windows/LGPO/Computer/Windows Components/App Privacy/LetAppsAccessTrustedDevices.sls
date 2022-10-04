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
# LOCATION: \Computer\Windows Components\App Privacy\LetAppsAccessTrustedDevices.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# This policy setting specifies whether Windows apps can access trusted devices.
# 
# You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.
# 
# If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access trusted devices by using Settings > Privacy on the device.
# 
# If you choose the "Force Allow" option, Windows apps are allowed to access trusted devices and employees in your organization cannot change it.
# 
# If you choose the "Force Deny" option, Windows apps are not allowed to access trusted devices and employees in your organization cannot change it.
# 
# If you disable or do not configure this policy setting, employees in your organization can decide whether Windows apps can access trusted devices by using Settings > Privacy on the device.
# 
# If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
#       
Let Windows apps access trusted devices:
  lgpo.set:
  - name: LetAppsAccessTrustedDevices
  - setting:
      LetAppsAccessTrustedDevices_Enum: enum-placeholder
      LetAppsAccessTrustedDevices_ForceAllowTheseApps_List: multiText-placeholder
      LetAppsAccessTrustedDevices_ForceDenyTheseApps_List: multiText-placeholder
      LetAppsAccessTrustedDevices_UserInControlOfTheseApps_List: multiText-placeholder
  - policy_class: Machine
