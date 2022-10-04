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
# LOCATION: \Computer\Windows Components\Internet Explorer\Security Features\IESF_DisablePasswordRevealButton.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10
#
# This policy setting allows you to hide the reveal password button when Internet Explorer prompts users for a password. The reveal password button is displayed during password entry. When the user clicks the button, the current password value is visible until the mouse button is released (or until the tap ends).
# 
# If you enable this policy setting, the reveal password button will be hidden for all password fields. Users and developers will not be able to depend on the reveal password button being displayed in any web form or web application.
# 
# If you disable or do not configure this policy setting, the reveal password button can be shown by the application as a user types in a password. The reveal password button is visible by default.
# 
# On at least Windows 8, if the "Do not display the reveal password button" policy setting located in Computer Configuration\Administrative Templates\Windows Components\Credential User Interface is enabled for the system, it will override this policy setting.
Do not display the reveal password button:
  lgpo.set:
  - name: IESF_DisablePasswordRevealButton
  - setting: Enabled
  - policy_class: Machine
