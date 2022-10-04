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
# LOCATION: \Computer\Windows Components\Internet Explorer\Delete Browsing History\RestrictHistory.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# This setting specifies the number of days that Internet Explorer tracks views of pages in the History List. To access the Temporary Internet Files and History Settings dialog box, from the Menu bar, on the Tools menu, click Internet Options, click the General tab, and then click Settings under Browsing history.
# 
# If you enable this policy setting, a user cannot set the number of days that Internet Explorer tracks views of the pages in the History List. You must specify the number of days that Internet Explorer tracks views of pages in the History List. Users can not delete browsing history.
# 
# If you disable or do not configure this policy setting, a user can set the number of days that Internet Explorer tracks views of pages in the History list. Users can delete browsing history.
Disable "Configuring History":
  lgpo.set:
  - name: RestrictHistory
  - setting:
      DaysToKeep_Prompt: decimal-placeholder
  - policy_class: Machine
