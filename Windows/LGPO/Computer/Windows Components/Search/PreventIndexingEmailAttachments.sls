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
# LOCATION: \Computer\Windows Components\Search\PreventIndexingEmailAttachments.sls
#
# SUPPORTED WINDOWS OS
# VistaOrRedist
#
# Enable this policy setting to prevent the indexing of the content of e-mail attachments. If enabled, indexing service components (including non-Microsoft components) are expected not to index e-mail attachments. Consider enabling this policy if you are concerned about the security or indexing performance of non-Microsoft document filters (iFilters). This policy is disabled by default.
Prevent indexing e-mail attachments:
  lgpo.set:
  - name: PreventIndexingEmailAttachments
  - setting: Enabled
  - policy_class: Machine
