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
# LOCATION: \Computer\Windows Components\Internet Explorer\FavImportExport.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# This policy settings disables the Import/Export Settings wizard. This wizard allows you to import settings from another browser, import settings from a file, or export settings to a file. Importing settings from another browser allows the user to import favorites and feeds from other browsers. Importing settings from a file allows the user to import favorites, feeds and cookies from a file. Exporting settings to a file allows the user to export favorites, feeds and cookies to a file.
# 
# If you enable this policy setting, the user will not be able to use the Import/Export Settings wizard.
# 
# If you disable or do not configure this policy setting, the user will be able to use the Import/Export Settings wizard.
Disable Import/Export Settings wizard:
  lgpo.set:
  - name: FavImportExport
  - setting: Enabled
  - policy_class: Machine
