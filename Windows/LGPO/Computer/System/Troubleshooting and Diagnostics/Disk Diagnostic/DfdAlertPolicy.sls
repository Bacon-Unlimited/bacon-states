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
# LOCATION: \Computer\System\Troubleshooting and Diagnostics\Disk Diagnostic\DfdAlertPolicy.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WindowsLonghornServerDesktopExperienceOrVista
#
# This policy setting substitutes custom alert text in the disk diagnostic message shown to users when a disk reports a S.M.A.R.T. fault. 
# 
# If you enable this policy setting, Windows displays custom alert text in the disk diagnostic message. The custom text may not exceed 512 characters. 
# 
# If you disable or do not configure this policy setting, Windows displays the default alert text in the disk diagnostic message. 
# 
# No reboots or service restarts are required for this policy setting to take effect: changes take effect immediately. 
# 
# This policy setting only takes effect if the Disk Diagnostic scenario policy setting  is enabled or not configured and the Diagnostic Policy Service (DPS) is in the running state. When the service is stopped or disabled, diagnostic scenarios are not executed. The DPS can be configured with the Services snap-in to the Microsoft Management Console. 
# 
# Note: For Windows Server systems, this policy setting applies only if the Desktop Experience optional component is installed and the Remote Desktop Services role is not installed. 
#       
'Disk Diagnostic: Configure custom alert text':
  lgpo.set:
  - name: DfdAlertPolicy
  - setting:
      DfdAlertPolicyTitle: text-placeholder
  - policy_class: Machine
