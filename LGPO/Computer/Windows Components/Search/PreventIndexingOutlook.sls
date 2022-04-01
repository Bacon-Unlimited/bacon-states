# VistaOrRedist
#
# Enable this policy to prevent indexing of any Microsoft Outlook items. The default is to automatically index Outlook items. If this policy is enabled then the user's Outlook items will not be added to the index and the user will not see them in search results.
Prevent indexing Microsoft Office Outlook:
  lgpo.set:
  - name: PreventIndexingOutlook
  - setting: Enabled
  - policy_class: Machine
