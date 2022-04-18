# Win8Only
#
# This policy setting determines when Windows uses automatic language detection results, and when it relies on indexing history. If you enable this policy setting, Windows will always use automatic language detection to index (as it did in Windows 7). Using automatic language detection can increase memory usage. We recommend enabling this policy setting only on PCs where documents are stored in many languages. If you disable or do not configure this policy setting, Windows will use automatic language detection only when it can determine the language of a document with high confidence.
Always use automatic language detection when indexing content and properties:
  lgpo.set:
  - name: AlwaysUseAutoLangDetection
  - setting: Enabled
  - policy_class: Machine
