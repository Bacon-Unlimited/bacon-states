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
# LOCATION: \Computer\Windows Components\Internet Explorer\Compatibility View\CompatView_AllSites.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8_10
#
# This policy setting allows you to turn on Internet Explorer 7 Standards Mode. Compatibility View determines how Internet Explorer identifies itself to a web server and determines whether content is rendered in Internet Explorer 7 Standards Mode or the Standards Mode available in the latest version of Internet Explorer.
# 
# If you enable this policy setting, Internet Explorer uses an Internet Explorer 7 user agent string (with an additional string appended). Additionally, all Standards Mode webpages appear in Internet Explorer 7 Standards Mode. This option results in the greatest compatibility with existing webpages, but newer content written to common Internet standards may be displayed incorrectly.
# 
# If you disable this policy setting, Internet Explorer uses a current user agent string. Additionally, all Standards Mode webpages appear in the Standards Mode available in the latest version of Internet Explorer. This option matches the default behavior of Internet Explorer.
# 
# If you do not configure this policy setting, the user can turn on and turn off Internet Explorer 7 Standards Mode.
Turn on Internet Explorer 7 Standards Mode:
  lgpo.set:
  - name: CompatView_AllSites
  - setting: Enabled
  - policy_class: Machine
