# 4OrLater
#
# Enabling this policy allows indexing of items for online delegate mailboxes on a Microsoft Exchange server. This policy affects only delegate mailboxes that are online. Microsoft Outlook 2007 allows users to cache portions of delegate mailboxes locally (for example, contacts or a calendar). This policy will not affect portions of a delegate mailbox that are cached locally. To have this policy affect all parts of a delegate mailbox, ensure that for Microsoft Outlook 2007 no portions of the delegate mailbox are cached locally. The default behavior for Search is to not index online delegate mailboxes. Disabling this policy will block any indexing of online delegate mailboxes. Online delegate mailboxes are managed separately from online mailboxes. The "Enable Indexing of Uncached Exchange Folders" policy has no effect on online delegate mailboxes. To stop indexing of online mailboxes and online delegate mailboxes you must disable both policies.
Enable indexing of online delegate mailboxes:
  lgpo.set:
  - name: EnableIndexingDelegateMailboxes
  - setting: Enabled
  - policy_class: Machine
