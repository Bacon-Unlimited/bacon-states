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
# LOCATION: \Computer\Windows Components\Smart Card\AllowIntegratedUnblock.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting lets you determine whether the integrated unblock feature will be available in the logon User Interface (UI).
# 
# In order to use the integrated unblock feature your smart card must support this feature.  Please check with your hardware manufacturer to see if your smart card supports this feature.
# 
# If you enable this policy setting, the integrated unblock feature will be available.
# 
# If you disable or do not configure this policy setting then the integrated unblock feature will not be available.
Allow Integrated Unblock screen to be displayed at the time of logon:
  lgpo.set:
  - name: AllowIntegratedUnblock
  - setting: Enabled
  - policy_class: Machine
