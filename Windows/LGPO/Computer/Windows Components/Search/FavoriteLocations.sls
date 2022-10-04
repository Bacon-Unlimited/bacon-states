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
# LOCATION: \Computer\Windows Components\Search\FavoriteLocations.sls
#
# SUPPORTED WINDOWS OS
# RedistOnly4OrLater
#
# This policy setting allows you to enable or disable the Add/Remove location options on the All Locations menu as well as any defined locations that were made by a user.  When this policy is not configured, the default behavior is to allow users to add and remove new locations to the locations menu.  When the policy is enabled, the Add and Remove locations options and any previously defined user locations will not be visible.  When the policy is disabled, both the Add and Remove locations options as well as any previously specified user locations will be visible.
Prevent adding user-specified locations to the All Locations menu:
  lgpo.set:
  - name: FavoriteLocations
  - setting: Enabled
  - policy_class: Machine
