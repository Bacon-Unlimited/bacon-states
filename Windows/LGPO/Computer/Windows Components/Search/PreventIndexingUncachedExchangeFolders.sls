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
# LOCATION: \Computer\Windows Components\Search\PreventIndexingUncachedExchangeFolders.sls
#
# SUPPORTED WINDOWS OS
# VistaOrRedist
#
# Enabling this policy allows indexing of mail items on a Microsoft Exchange server when Microsoft Outlook is not running in cached mode. The default behavior for search is to not index uncached Exchange folders. Disabling this policy will block any indexing of uncached Exchange folders. Delegate mailboxes are managed separately from online mailboxes. The "Enable Indexing of Uncached Exchange Folders" has no effect on delegate mailboxes. To stop indexing of online and delegate mailboxes you must disable both policies.
Enable indexing uncached Exchange folders:
  lgpo.set:
  - name: PreventIndexingUncachedExchangeFolders
  - setting: Enabled
  - policy_class: Machine
