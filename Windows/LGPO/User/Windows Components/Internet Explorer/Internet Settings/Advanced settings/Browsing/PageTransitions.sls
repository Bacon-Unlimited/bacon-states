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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\Advanced settings\Browsing\PageTransitions.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5_8
#
# This policy setting specifies if, as you move from one Web page to another, Internet Explorer fades out of the page you are leaving and fades into the page to which you are going.
# 
# If you enable this policy setting, page transitions will be turned off. The user cannot change this behavior.
# 
# If you disable this policy setting, page transitions will be turned on. The user cannot change this behavior.
# 
# If you do not configure this policy setting, the user can turn on or off page transitions.
# 
# This feature only applies to versions of Internet Explorer up to and including Internet Explorer 8.
Turn off page transitions:
  lgpo.set:
  - name: PageTransitions
  - setting: Enabled
  - policy_class: User
