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
# LOCATION: \User\Windows Components\Internet Explorer\NotifyNotDefaultBrowser.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10
#
# This policy setting allows you to choose whether users will be notified if Internet Explorer is not the default web browser.
# 
# If you enable this policy setting, users will be notified if Internet Explorer is not the default web browser. Users cannot change the setting.
# 
# If you disable this policy setting, users will not be notified if Internet Explorer is not the default web browser. Users cannot change the setting.
# 
# If you do not configure this policy setting, users can choose whether to be notified that Internet Explorer is not the default web browser through the Tell me if Internet Explorer is not the default web browser check box on the Programs tab in the Internet Options dialog box. Note that starting with Internet Explorer 10 on Windows 8, the check box is located on the Advanced tab in the Internet Options dialog box. For more information, see "Group Policy Settings in Internet Explorer 10" in the Internet Explorer TechNet library.
Notify users if Internet Explorer is not the default web browser:
  lgpo.set:
  - name: NotifyNotDefaultBrowser
  - setting: Enabled
  - policy_class: User
