# windows:SUPPORTED_Windows_10_0
#
# This policy setting specifies whether Windows apps can access the microphone.
# 
# You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.
# 
# If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access the microphone by using Settings > Privacy on the device.
# 
# If you choose the "Force Allow" option, Windows apps are allowed to access the microphone and employees in your organization cannot change it.
# 
# If you choose the "Force Deny" option, Windows apps are not allowed to access the microphone and employees in your organization cannot change it.
# 
# If you disable or do not configure this policy setting, employees in your organization can decide whether Windows apps can access the microphone by using Settings > Privacy on the device.
# 
# If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
#       
Let Windows apps access the microphone:
  lgpo.set:
  - name: LetAppsAccessMicrophone
  - setting:
      LetAppsAccessMicrophone_Enum: enum-placeholder
      LetAppsAccessMicrophone_ForceAllowTheseApps_List: multiText-placeholder
      LetAppsAccessMicrophone_ForceDenyTheseApps_List: multiText-placeholder
      LetAppsAccessMicrophone_UserInControlOfTheseApps_List: multiText-placeholder
  - policy_class: Machine