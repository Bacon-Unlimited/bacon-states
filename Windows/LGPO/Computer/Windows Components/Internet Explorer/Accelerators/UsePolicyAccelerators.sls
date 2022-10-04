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
# LOCATION: \Computer\Windows Components\Internet Explorer\Accelerators\UsePolicyAccelerators.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting restricts the list of Accelerators that the user can access to only the set deployed through Group Policy.
# 
# If you enable this policy setting, the user can access only Accelerators that are deployed through Group Policy. The user cannot add or delete Accelerators.
# 
# If you disable or do not configure this policy setting, the user can access any Accelerators that he or she has installed.
Restrict Accelerators to those deployed through Group Policy:
  lgpo.set:
  - name: UsePolicyAccelerators
  - setting: Enabled
  - policy_class: Machine
