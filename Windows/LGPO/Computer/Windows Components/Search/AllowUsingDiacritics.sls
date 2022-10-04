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
# LOCATION: \Computer\Windows Components\Search\AllowUsingDiacritics.sls
#
# SUPPORTED WINDOWS OS
# VistaOrRedist
#
# This policy setting allows words that contain diacritic characters to be treated as separate words. If you enable this policy setting, words that only differ in diacritics are treated as different words. If you disable this policy setting, words with diacritics and words without diacritics are treated as identical words. This policy setting is not configured by default. If you do not configure this policy setting, the local setting, configured through Control Panel, will be used. Note: By default, the Control Panel setting is set to treat words that differ only because of diacritics as the same word.
Allow use of diacritics:
  lgpo.set:
  - name: AllowUsingDiacritics
  - setting: Enabled
  - policy_class: Machine
