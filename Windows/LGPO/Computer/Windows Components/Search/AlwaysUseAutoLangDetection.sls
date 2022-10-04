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
# LOCATION: \Computer\Windows Components\Search\AlwaysUseAutoLangDetection.sls
#
# SUPPORTED WINDOWS OS
# Win8Only
#
# This policy setting determines when Windows uses automatic language detection results, and when it relies on indexing history. If you enable this policy setting, Windows will always use automatic language detection to index (as it did in Windows 7). Using automatic language detection can increase memory usage. We recommend enabling this policy setting only on PCs where documents are stored in many languages. If you disable or do not configure this policy setting, Windows will use automatic language detection only when it can determine the language of a document with high confidence.
Always use automatic language detection when indexing content and properties:
  lgpo.set:
  - name: AlwaysUseAutoLangDetection
  - setting: Enabled
  - policy_class: Machine
