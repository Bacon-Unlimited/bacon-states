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
# LOCATION: \Computer\Windows Components\Internet Explorer\EnterpriseModeSiteList.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11
#
# This policy setting lets you specify where to find the list of websites you want opened using Enterprise Mode IE, instead of Standard mode, because of compatibility issues. Users can't edit this list.
# 
# If you enable this policy setting, Internet Explorer downloads the website list from your location (HKCU or HKLM\Software\policies\Microsoft\Internet Explorer\Main\EnterpriseMode), opening all listed websites using Enterprise Mode IE.
# 
# If you disable or don't configure this policy setting, Internet Explorer opens all websites using Standards mode.
Use the Enterprise Mode IE website list:
  lgpo.set:
  - name: EnterpriseModeSiteList
  - setting:
      EnterSiteListPrompt: text-placeholder
  - policy_class: Machine
