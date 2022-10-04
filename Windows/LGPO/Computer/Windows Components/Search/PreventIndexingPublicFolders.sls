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
# LOCATION: \Computer\Windows Components\Search\PreventIndexingPublicFolders.sls
#
# SUPPORTED WINDOWS OS
# VistaOrRedist
#
# Enable this policy to prevent indexing public folders in Microsoft Office Outlook. When this policy is disabled or not configured, the user has the option to index cached public folders in Outlook. Public folders are only indexed when using Outlook 2003 or later. The user must be running in cached mode and the Download Public Folder Favorites option must be turned on.
Prevent indexing public folders:
  lgpo.set:
  - name: PreventIndexingPublicFolders
  - setting: Enabled
  - policy_class: Machine
