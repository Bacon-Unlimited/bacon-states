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
# LOCATION: \Computer\Windows Components\Internet Explorer\EnableGlobalWindowListInIEMode.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11
#
# This setting allows Internet Explorer mode to use the global window list that enables sharing state with other applications.
# The setting will take effect only when Internet Explorer 11 is disabled as a standalone browser.
# 
# If you enable this policy, Internet Explorer mode will use the global window list.
# 
# If you disable or dont configure this policy, Internet Explorer mode will continue to maintain a separate window list.
# 
# To learn more about Internet Explorer mode, see https://go.microsoft.com/fwlink/?linkid=2102921
# To learn more about disabling Internet Explorer 11 as a standalone browser, see https://go.microsoft.com/fwlink/?linkid=2168340
Enable global window list in Internet Explorer mode:
  lgpo.set:
  - name: EnableGlobalWindowListInIEMode
  - setting: Enabled
  - policy_class: Machine
