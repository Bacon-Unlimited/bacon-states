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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page\Advanced_PlayAnimations.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SRVSP1
#
# This policy setting allows you to manage whether Internet Explorer will display animated pictures found in Web content. Generally only animated GIF files are affected by this setting; active Web content such as java applets are not.
# 
# If you enable this policy setting, Internet Explorer will play animated pictures found in Web content.
# 
# If you disable this policy setting, Internet Explorer will not play or download animated pictures, helping pages display more quickly.
# 
# If you do not configure this policy setting, Internet Explorer will play animated pictures found in Web content.
Play animations in web pages:
  lgpo.set:
  - name: Advanced_PlayAnimations
  - setting: Enabled
  - policy_class: User
