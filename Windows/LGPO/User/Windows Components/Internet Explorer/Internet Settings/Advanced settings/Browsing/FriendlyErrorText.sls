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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\Advanced settings\Browsing\FriendlyErrorText.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting specifies whether, when there is a problem connecting with an Internet server, to provide a detailed description with hints about how to correct the problem. If you clear this check box, the user sees only the error code and the name of the error.
# 
# If you enable this policy setting, when there is a problem connecting with an Internet server, the user does not see a detailed description or hints about how to correct the problem. The user cannot change this policy setting.
# 
# If you disable this policy setting, when there is a problem connecting with an Internet server, the user sees a detailed description with hints about how to correct the problem. The user cannot change this policy setting.
# 
# If you do not configure this policy setting, the user can turn on or turn off details in these error messages.
Turn off details in messages about Internet connection problems:
  lgpo.set:
  - name: FriendlyErrorText
  - setting: Enabled
  - policy_class: User
