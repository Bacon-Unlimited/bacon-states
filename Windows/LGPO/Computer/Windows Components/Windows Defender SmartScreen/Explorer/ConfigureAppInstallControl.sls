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
# LOCATION: \Computer\Windows Components\Windows Defender SmartScreen\Explorer\ConfigureAppInstallControl.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS5
#
# App Install Control is a feature of Windows Defender SmartScreen that helps protect PCs by allowing users to install apps only from the Store.  SmartScreen must be enabled for this feature to work properly.
# 
# If you enable this setting, you must choose from the following behaviors:
# 
#      - Turn off app recommendations
# 
#      - Show me app recommendations
# 
#      - Warn me before installing apps from outside the Store
# 
#      - Allow apps from Store only
# 
# If you disable or don't configure this setting, users will be able to install apps from anywhere, including files downloaded from the Internet.
Configure App Install Control:
  lgpo.set:
  - name: ConfigureAppInstallControl
  - setting:
      ConfigureAppInstallControl_Dropdown: enum-placeholder
  - policy_class: Machine
