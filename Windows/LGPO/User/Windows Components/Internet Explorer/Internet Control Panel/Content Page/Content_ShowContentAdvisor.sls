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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Content Page\Content_ShowContentAdvisor.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10
#
# This policy setting shows the Content Advisor setting on the Content tab of the Internet Options dialog box.
# 
# If you enable this policy setting, Internet Explorer displays the Content Advisor setting on the Content tab of the Internet Options dialog box. Users can change Content Advisor settings.
# 
# If you disable or do not configure this policy setting, Internet Explorer does not display the Content Advisor setting on the Content tab of the Internet Options dialog box.
# 
# Note: This policy is no longer supported starting with Windows 10 Version 1607.
Show Content Advisor on Internet Options:
  lgpo.set:
  - name: Content_ShowContentAdvisor
  - setting: Enabled
  - policy_class: User
