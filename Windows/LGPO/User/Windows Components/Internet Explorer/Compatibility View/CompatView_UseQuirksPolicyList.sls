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
# LOCATION: \User\Windows Components\Internet Explorer\Compatibility View\CompatView_UseQuirksPolicyList.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# Compatibility View determines how Internet Explorer identifies itself to a web server and determines whether content is rendered in Quirks Mode or the Standards Mode available in the latest version of Internet Explorer.
# 
# If you enable this policy setting, Internet Explorer uses an Internet Explorer 7 user agent string (with an additional string appended). Additionally, webpages included in this list appear in Quirks Mode.
Use Policy List of Quirks Mode sites:
  lgpo.set:
  - name: CompatView_UseQuirksPolicyList
  - setting:
      QuirksMode_SiteList:
      - placeholder1
      - placeholder2
  - policy_class: User
