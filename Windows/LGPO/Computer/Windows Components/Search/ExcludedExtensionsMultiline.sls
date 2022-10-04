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
# LOCATION: \Computer\Windows Components\Search\ExcludedExtensionsMultiline.sls
#
# SUPPORTED WINDOWS OS
# 301OrLater
#
# Enabling this policy allows you to edit the list of file types to exclude from indexing. The end user cannot modify this list. You should separate each extension type with a semicolon.
# 
# Note that limitations of Group Policy Object Editor require this list to be split across multiple values. Desktop Search combines all these into a single exclusion list.
# 
# When this policy is disabled or not configured, the user can edit the default list of excluded file types. If you enable and then disable this policy, the user's original list is restored.
# 
# If you want to specify an initial default list of excluded file types that users can change later, see the administration guide for information about how to set up the initial machine preference.
Prevent indexing of certain file types:
  lgpo.set:
  - name: ExcludedExtensionsMultiline
  - setting:
      ExcludedExtensionsMultiline_0: text-placeholder
      ExcludedExtensionsMultiline_1: text-placeholder
      ExcludedExtensionsMultiline_2: text-placeholder
      ExcludedExtensionsMultiline_3: text-placeholder
  - policy_class: Machine
