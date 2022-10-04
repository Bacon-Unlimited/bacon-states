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
# LOCATION: \User\Windows Components\Windows Error Reporting\Advanced Error Reporting Settings\WerArchive_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting controls the behavior of the Windows Error Reporting archive.
# 
# If you enable this policy setting, you can configure Windows Error Reporting archiving behavior. If Archive behavior is set to Store all, all data collected for each error report is stored in the appropriate location. If Archive behavior is set to Store parameters only, only the minimum information required to check for an existing solution is stored. The Maximum number of reports to store setting determines how many reports are stored before older reports are automatically deleted.
# 
# If you disable or do not configure this policy setting, no Windows Error Reporting information is stored.
Configure Report Archive:
  lgpo.set:
  - name: WerArchive_1
  - setting:
      WerArchiveBehavior: enum-placeholder
      WerMaxArchiveCount: decimal-placeholder
  - policy_class: User
