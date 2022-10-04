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
# LOCATION: \Computer\Windows Components\Internet Explorer\SecondaryHomePages.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# Secondary home pages are the default Web pages that Internet Explorer loads in separate tabs from the home page whenever the browser is run. This policy setting allows you to set default secondary home pages.
# 
# If you enable this policy setting, you can specify which default home pages should load as secondary home pages. The user cannot set custom default secondary home pages.
# 
# If you disable or do not configure this policy setting, the user can add secondary home pages.
# 
# Note: If the Disable Changing Home Page Settings policy is enabled, the user cannot add secondary home pages.
Disable changing secondary home page settings:
  lgpo.set:
  - name: SecondaryHomePages
  - setting:
      SecondaryHomePagesList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
