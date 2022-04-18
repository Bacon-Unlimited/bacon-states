# SUPPORTED_INTERNET_BROWSER_RS4
#
# This policy setting lets you decide whether Microsoft Edge stores books from the Books tab to a default, shared folder for Windows.
# 
# If you enable this setting, Microsoft Edge automatically downloads book files to a common, shared folder and prevents students and teachers from removing the book from the Books tab. For this to work properly, your students and teachers must be signed in using a school account.
# 
# If you disable or don't configure this setting, Microsoft Edge downloads book files to a per-user folder for each student or teacher.
Allow a shared Books folder:
  lgpo.set:
  - name: UseSharedFolderForBooks
  - setting: Enabled
  - policy_class: Machine
