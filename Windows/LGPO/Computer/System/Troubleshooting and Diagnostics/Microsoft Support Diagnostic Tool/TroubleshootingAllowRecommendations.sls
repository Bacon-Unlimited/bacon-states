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
# LOCATION: \Computer\System\Troubleshooting and Diagnostics\Microsoft Support Diagnostic Tool\TroubleshootingAllowRecommendations.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS6
#
# This policy setting applies recommended troubleshooting for known problems on the device and lets administrators configure how it's applied to their domains/IT environments.
# Not configuring this policy setting will allow the user to configure if and how recommended troubleshooting is applied.
# 
# Enabling this policy allows you to configure how recommended troubleshooting is applied on the user's device. You can select from one of the following values:
# 0 = Turn this feature off.
# 1 = Turn this feature off but still apply critical troubleshooting.
# 2 = Notify users when recommended troubleshooting is available, then allow the user to run or ignore it.
# 3 = Run recommended troubleshooting automatically and notify the user after it's been successfully run.
# 4 = Run recommended troubleshooting automatically without notifying the user.
# 5 = Allow the user to choose their own recommended troubleshooting settings.
# 
# After setting this new setting, to trigger recommended troubleshooting for devices in your domain, follow these instructions:
# 1. Create a bat script with the following contents:
# rem The following batch script triggers Recommended Troubleshooting
# schtasks /run /TN "\Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner"
# 
# 2. To create a new immediate task, navigate to the Group Policy Management Editor > Computer Configuration > Preferences and select Control Panel Settings. 
# 3. Under Control Panel settings, right-click on Scheduled Tasks and select New. Select Immediate Task (At least Windows 7).
# 4. Provide name and description as appropriate, then under Security Options set the user account to System and select the Run with highest privileges checkbox.
# 5. In the Actions tab, create a new action, select Start a Program as its type, then enter the file created in step 1.
# 6. Configure the task to deploy to your domain.
'Troubleshooting: Allow users to access recommended troubleshooting for known problems':
  lgpo.set:
  - name: TroubleshootingAllowRecommendations
  - setting:
      TroubleshootingAllowRecommendations_Dropdown: enum-placeholder
  - policy_class: Machine
