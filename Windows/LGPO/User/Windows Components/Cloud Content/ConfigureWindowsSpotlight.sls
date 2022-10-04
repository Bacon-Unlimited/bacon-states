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
# LOCATION: \User\Windows Components\Cloud Content\ConfigureWindowsSpotlight.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# This policy setting lets you configure Windows spotlight on the lock screen.
# 
# If you enable this policy setting, "Windows spotlight" will be set as the lock screen provider and users will not be able to modify their lock screen. "Windows spotlight" will display daily images from Microsoft on the lock screen.
# 
# Additionally, if you check the "Include content from Enterprise spotlight" checkbox and your organization has setup an Enterprise spotlight content service in Azure, the lock screen will display internal messages and communications configured in that service, when available. If your organization does not have an Enterprise spotlight content service, the checkbox will have no effect.
# 
# If you disable this policy setting, Windows spotlight will be turned off and users will no longer be able to select it as their lock screen. Users will see the default lock screen image and will be able to select another image, unless you have enabled the "Prevent changing lock screen image" policy.
# 
# If you do not configure this policy, Windows spotlight will be available on the lock screen and will be selected by default, unless you have configured another default lock screen image using the "Force a specific default lock screen image" policy.
# 
# Note: This policy is only available for Enterprise SKUs
Configure Windows spotlight on lock screen:
  lgpo.set:
  - name: ConfigureWindowsSpotlight
  - setting:
      ConfigureWindowsSpotlight_Checkbox: boolean-placeholder
  - policy_class: User
