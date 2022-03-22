# windows:SUPPORTED_Windows_10_0
#
# This policy setting specifies whether Windows apps can run in the background.
# 
# You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.
# 
# If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can run in the background by using Settings > Privacy on the device.
# 
# If you choose the "Force Allow" option, Windows apps are allowed to run in the background and employees in your organization cannot change it.
# 
# If you choose the "Force Deny" option, Windows apps are not allowed to run in the background and employees in your organization cannot change it.
# 
# If you disable or do not configure this policy setting, employees in your organization can decide whether Windows apps can run in the background by using Settings > Privacy on the device.
# 
# If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
#       
Let Windows apps run in the background:
  lgpo.set:
  - name: LetAppsRunInBackground
  - setting:
      LetAppsRunInBackground_Enum: enum-placeholder
      LetAppsRunInBackground_ForceAllowTheseApps_List: multiText-placeholder
      LetAppsRunInBackground_ForceDenyTheseApps_List: multiText-placeholder
      LetAppsRunInBackground_UserInControlOfTheseApps_List: multiText-placeholder
  - policy_class: Machine
