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
# LOCATION: \Computer\Windows Components\Internet Explorer\RestrictPopupExceptionList.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# You can allow pop-ups from specific websites by adding the sites to the exception list.
# 
# If you enable this policy setting, the user cannot add websites to or remove websites from the exception list.
# 
# If you disable or do not configure this policy setting, the user can add websites to or remove websites from the exception list.
# 
# Note: You can allow a default list of sites that can open pop-up windows regardless of the Internet Explorer process's Pop-Up Blocker settings by enabling the "Specify pop-up allow list" policy setting.
Prevent managing pop-up exception list:
  lgpo.set:
  - name: RestrictPopupExceptionList
  - setting: Enabled
  - policy_class: Machine
