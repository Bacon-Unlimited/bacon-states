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
# LOCATION: \User\Windows Components\Credential User Interface\DisablePasswordReveal.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8_Or_IE10
#
# This policy setting allows you to configure the display of the password reveal button in password entry user experiences.
# 
# If you enable this policy setting, the password reveal button will not be displayed after a user types a password in the password entry text box.
# 
# If you disable or do not configure this policy setting, the password reveal button will be displayed after a user types a password in the password entry text box.
# 
# By default, the password reveal button is displayed after a user types a password in the password entry text box. To display the password, click the password reveal button.
# 
# The policy applies to all Windows components and applications that use the Windows system controls, including Internet Explorer.
Do not display the password reveal button:
  lgpo.set:
  - name: DisablePasswordReveal
  - setting: Enabled
  - policy_class: User
