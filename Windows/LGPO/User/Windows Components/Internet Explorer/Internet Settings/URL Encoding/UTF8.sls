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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\URL Encoding\UTF8.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting specifies whether to use 8-bit Unicode Transformation Format (UTF-8), a standard that defines characters so they are readable in any language. By using UTF-8, you can exchange Internet addresses (URLs) that contain characters from any language.
# 
# If you enable this policy setting, Internet Explorer does not allow sending the path portion of URLs as UTF-8. The user cannot change this policy setting.
# 
# If you disable this policy setting, Internet Explorer allows sending the path portion of URLs as UTF-8. The user cannot change this policy setting.
# 
# If you do not configure this policy setting, the user can allow or prevent the sending of the path portion of URLs as UTF-8.
Turn off sending URL path as UTF-8:
  lgpo.set:
  - name: UTF8
  - setting: Enabled
  - policy_class: User
