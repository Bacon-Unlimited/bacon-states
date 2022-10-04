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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Intranet Zone\IZ_Policy_ScriptPrompt_3.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting determines whether scripted windows are automatically displayed.
# 
# If you enable this policy setting, scripted windows are displayed.
# 
# If you disable this policy setting, the user must choose to display any scripted windows by using the Notification bar.
# 
# If you do not configure this policy setting, the user can enable or disable the Notification bar behavior.
Allow websites to prompt for information by using scripted windows:
  lgpo.set:
  - name: IZ_Policy_ScriptPrompt_3
  - setting:
      IZ_Partname2105: enum-placeholder
  - policy_class: Machine
