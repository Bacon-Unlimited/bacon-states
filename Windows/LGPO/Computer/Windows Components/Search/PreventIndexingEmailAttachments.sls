# VistaOrRedist
#
# Enable this policy setting to prevent the indexing of the content of e-mail attachments. If enabled, indexing service components (including non-Microsoft components) are expected not to index e-mail attachments. Consider enabling this policy if you are concerned about the security or indexing performance of non-Microsoft document filters (iFilters). This policy is disabled by default.
Prevent indexing e-mail attachments:
  lgpo.set:
  - name: PreventIndexingEmailAttachments
  - setting: Enabled
  - policy_class: Machine
