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
# LOCATION: \User\Windows Components\Microsoft Edge\Favorites.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_WIN10V1511
#
# This policy setting lets you configure the default list of Favorites that appear for your employees. Employees can change their favorites by adding or removing items at any time.
# 
# If you enable this setting, you can configure what default Favorites appear for your employees. If this setting is enabled, you must also provide a list of Favorites in the Options section. This list is imported after your policy is deployed.
# 
# If you disable or don't configure this setting, employees will see the Favorites that they set in the Favorites hub.
Configure Favorites:
  lgpo.set:
  - name: Favorites
  - setting:
      ProvisionedFavorites_List:
      - placeholder1
      - placeholder2
  - policy_class: User
