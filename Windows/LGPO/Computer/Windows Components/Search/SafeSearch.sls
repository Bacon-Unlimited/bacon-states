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
# LOCATION: \Computer\Windows Components\Search\SafeSearch.sls
#
# SUPPORTED WINDOWS OS
# WinBlueExclusive
#
# This policy setting allows you to control the SafeSearch setting used when performing a query in Search. 
# 
# If you enable this policy setting, you can specify one of three SafeSearch settings, which users won't be able to change:
# 
#     -Strict: Filter out adult text, images, and videos from search results;
# 
#     -Moderate: Filter adult images and videos but not text from search results;
# 
#     -Off: Don't filter adult content from search results.
# 
# If you disable or don't configure this policy setting, users can specify the SafeSearch setting.
# 
# Windows 10 users should use Search/DoNotUseWebResults
Set the SafeSearch setting for Search:
  lgpo.set:
  - name: SafeSearch
  - setting:
      SafeSearch_Dropdown: enum-placeholder
  - policy_class: Machine
