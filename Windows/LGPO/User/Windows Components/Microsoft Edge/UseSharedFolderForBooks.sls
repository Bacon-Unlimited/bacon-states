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
# LOCATION: \User\Windows Components\Microsoft Edge\UseSharedFolderForBooks.sls
#
# SUPPORTED WINDOWS OS
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
  - policy_class: User
