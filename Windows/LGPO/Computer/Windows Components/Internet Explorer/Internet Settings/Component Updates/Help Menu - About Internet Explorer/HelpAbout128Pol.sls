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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Settings\Component Updates\Help Menu - About Internet Explorer\HelpAbout128Pol.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting prevents the user from specifying a URL that contains update information about cipher strength. When the user logs on to a secure page, the page cannot grant access unless the Internet browser connects with a prespecified encryption. To ensure that the browser meets this requirement, this policy setting allows you to specify the URL to update the browser security setting.
# 
# If you enable this policy setting, the user cannot specify the cipher strength update information URL. You must specify the cipher strength update information URL.
# 
# If you disable or do not configure this policy setting, the user can specify the cipher strength update information URL.
Prevent specifying cipher strength update information URLs:
  lgpo.set:
  - name: HelpAbout128Pol
  - setting:
      HelpAbout128Link: text-placeholder
  - policy_class: Machine
