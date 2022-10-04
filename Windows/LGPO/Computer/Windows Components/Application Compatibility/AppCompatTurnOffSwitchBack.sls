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
# LOCATION: \Computer\Windows Components\Application Compatibility\AppCompatTurnOffSwitchBack.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# The policy controls the state of the Switchback compatibility engine in the system. 
# 
# Switchback is a mechanism that provides generic compatibility mitigations to older applications by providing older behavior to old applications and new behavior to new applications. 
# 
# Switchback is on by default.
# 
# If you enable this policy setting, Switchback will be turned off. Turning Switchback off may degrade the compatibility of older applications. This option is useful for server administrators who require performance and are aware of compatibility of the applications they are using. 
# 
# If you disable or do not configure this policy setting, the Switchback will be turned on.
# 
# Please reboot the system after changing the setting to ensure that your system accurately reflects those changes.
Turn off SwitchBack Compatibility Engine:
  lgpo.set:
  - name: AppCompatTurnOffSwitchBack
  - setting: Enabled
  - policy_class: Machine
