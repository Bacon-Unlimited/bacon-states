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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\Advanced settings\Signup Settings\NoAutomaticSignup.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting allows Internet Explorer to be started automatically to complete the signup process after the branding is complete for Internet service providers (ISPs) through the Internet Explorer Administration Kit (IEAK).
# 
# If you enable this policy setting, Internet Explorer is started automatically to complete the signup process after the branding is complete for ISPs (IEAK). The user cannot change this behavior.
# 
# If you disable this policy setting, Internet Explorer is not started automatically to complete the signup process after the branding is complete for ISPs (IEAK). The user cannot change this behavior.
# 
# If you do not configure this policy setting, the user can decide whether to start Internet Explorer automatically to complete the signup process after the branding is complete for ISPs (IEAK).
Turn on automatic signup:
  lgpo.set:
  - name: NoAutomaticSignup
  - setting: Enabled
  - policy_class: User
