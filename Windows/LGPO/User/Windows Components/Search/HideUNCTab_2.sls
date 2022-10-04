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
# LOCATION: \User\Windows Components\Search\HideUNCTab_2.sls
#
# SUPPORTED WINDOWS OS
# 4OrLater
#
# Enabling this policy prevents users from adding UNC locations to the index from the Search and Indexing Options in Control Panel.  Any UNC locations that have already been added to the index by the user will not be removed.
# 
# When this policy is disabled or not configured, users will be able to add UNC locations to the index.
# 
# This policy has no effect if the Files on Microsoft Networks add-in is not installed.
# 
# Disabled by default.
Prevent adding UNC locations to index from Control Panel:
  lgpo.set:
  - name: HideUNCTab_2
  - setting: Enabled
  - policy_class: User
