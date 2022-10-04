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
# LOCATION: \Computer\Windows Components\Microsoft Edge\AllowSearchEngineCustomization.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_WIN10V1703
#
# This policy setting lets you decide whether users can change their search engine. If you disable this setting, users can't add new search engines or change the default used in the address bar.
# 
# Important
# This setting can only be used with domain-joined or MDM-enrolled devices. For more info, see the Microsoft browser extension policy (aka.ms/browserpolicy).
# 
# If you enable or don't configure this policy, users can add new search engines and change the default used in the address bar from within Microsoft Edge Settings.
# 
# If you disable this setting, users can't add search engines or change the default used in the address bar.
Allow search engine customization:
  lgpo.set:
  - name: AllowSearchEngineCustomization
  - setting: Enabled
  - policy_class: Machine
