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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\Advanced settings\Printing\BackgroundColors.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting specifies whether Internet Explorer prints background colors and images when the user prints a webpage. Including background colors and images might reduce the speed at which a page is printed and the quality of the printing, depending on the capabilities of the printer.
# 
# If you enable this policy setting, the printing of background colors and images is turned on. The user cannot turn it off.
# 
# If you disable this policy setting, the printing of background colors and images is turned off. The user cannot turn it on.
# 
# If you do not configure this policy setting, the user can turn on or turn off the printing of background colors and images.
Turn on printing of background colors and images:
  lgpo.set:
  - name: BackgroundColors
  - setting: Enabled
  - policy_class: User
