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
# LOCATION: \Computer\Windows Components\Search\PreventIndexingCertainPaths_1.sls
#
# SUPPORTED WINDOWS OS
# 301OrLater
#
# If you enable this policy setting, you specify a list of paths to exclude from indexing. The user cannot enter any path that starts with one of the paths you specified.
# 
# If you enable and then disable this policy setting, users can index any path not restricted by other policies, but their original list of paths to index is not restored.
#       
Prevent indexing certain paths:
  lgpo.set:
  - name: PreventIndexingCertainPaths_1
  - setting:
      PreventIndexingCertainPaths:
      - placeholder1
      - placeholder2
  - policy_class: Machine
