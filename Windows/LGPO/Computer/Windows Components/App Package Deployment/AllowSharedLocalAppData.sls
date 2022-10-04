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
# LOCATION: \Computer\Windows Components\App Package Deployment\AllowSharedLocalAppData.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0
#
# Manages a Windows app's ability to share data between users who have installed the app.
# 
#         If you enable this policy, a Windows app can share app data with other instances of that app. Data is shared through the SharedLocal folder. This folder is available through the Windows.Storage API.
# 
#         If you disable this policy, a Windows app can't share app data with other instances of that app. If this policy was previously enabled, any previously shared app data will remain in the SharedLocal folder.
#       
Allow a Windows app to share application data between users:
  lgpo.set:
  - name: AllowSharedLocalAppData
  - setting: Enabled
  - policy_class: Machine
