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
# LOCATION: \User\Desktop\Active Directory\AD_EnableFilter.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# Displays the filter bar above the results of an Active Directory search. The filter bar consists of buttons for applying additional filters to search results.
# 
# If you enable this setting, the filter bar appears when the Active Directory Find dialog box opens, but users can hide it.
# 
# If you disable this setting or do not configure it, the filter bar does not appear, but users can display it by selecting "Filter" on the "View" menu.
# 
# To see the filter bar, open Network Locations, click Entire Network, and then click Directory. Right-click the name of a Windows domain, and click Find. Type the name of an object in the directory, such as  "Administrator." If the filter bar does not appear above the resulting display, on the View menu, click Filter.
Enable filter in Find dialog box:
  lgpo.set:
  - name: AD_EnableFilter
  - setting: Enabled
  - policy_class: User
