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
# LOCATION: \User\Windows Components\Presentation Settings\PresentationSettingsEnable_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off Windows presentation settings.
# 
# If you enable this policy setting, Windows presentation settings cannot be invoked.
# 
# If you disable this policy setting, Windows presentation settings can be invoked. The presentation settings icon will be displayed in the notification area. This will give users a quick and easy way to configure their system settings before a presentation to block system notifications and screen blanking, adjust speaker volume, and apply a custom background image.
# 
# Note: Users will be able to customize their system settings for presentations in Windows Mobility Center.
# 
# If you do not configure this policy setting, Windows presentation settings can be invoked.
Turn off Windows presentation settings:
  lgpo.set:
  - name: PresentationSettingsEnable_1
  - setting: Enabled
  - policy_class: User
