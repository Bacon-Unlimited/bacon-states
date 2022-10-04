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
# LOCATION: \User\Windows Components\File Explorer\ExplorerRibbonStartsMinimized.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify whether the ribbon appears minimized or in full when new File Explorer windows are opened. If you enable this policy setting, you can set how the ribbon appears the first time users open File Explorer and whenever they open new windows. If you disable or do not configure this policy setting, users can choose how the ribbon appears when they open new windows.
Start File Explorer with ribbon minimized:
  lgpo.set:
  - name: ExplorerRibbonStartsMinimized
  - setting:
      ExplorerRibbonStartsMinimizedDropdown: enum-placeholder
  - policy_class: User
