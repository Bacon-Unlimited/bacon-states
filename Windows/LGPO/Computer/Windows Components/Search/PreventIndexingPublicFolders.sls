# VistaOrRedist
#
# Enable this policy to prevent indexing public folders in Microsoft Office Outlook. When this policy is disabled or not configured, the user has the option to index cached public folders in Outlook. Public folders are only indexed when using Outlook 2003 or later. The user must be running in cached mode and the Download Public Folder Favorites option must be turned on.
Prevent indexing public folders:
  lgpo.set:
  - name: PreventIndexingPublicFolders
  - setting: Enabled
  - policy_class: Machine
