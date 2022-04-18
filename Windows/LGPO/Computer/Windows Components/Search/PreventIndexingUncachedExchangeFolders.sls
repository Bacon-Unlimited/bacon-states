# VistaOrRedist
#
# Enabling this policy allows indexing of mail items on a Microsoft Exchange server when Microsoft Outlook is not running in cached mode. The default behavior for search is to not index uncached Exchange folders. Disabling this policy will block any indexing of uncached Exchange folders. Delegate mailboxes are managed separately from online mailboxes. The "Enable Indexing of Uncached Exchange Folders" has no effect on delegate mailboxes. To stop indexing of online and delegate mailboxes you must disable both policies.
Enable indexing uncached Exchange folders:
  lgpo.set:
  - name: PreventIndexingUncachedExchangeFolders
  - setting: Enabled
  - policy_class: Machine
