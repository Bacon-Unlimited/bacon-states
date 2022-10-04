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
# LOCATION: \Computer\Windows Components\Application Compatibility\AppCompatRemoveProgramCompatPropPage.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNET
#
# This policy controls the visibility of the Program Compatibility property page shell extension.  This shell extension is visible on the property context-menu of any program shortcut or executable file.
# 
# The compatibility property page displays a list of options that can be selected and applied to the application to resolve the most common issues affecting legacy applications.  Enabling this policy setting removes the property page from the context-menus, but does not affect previous compatibility settings applied to application using this interface.
Remove Program Compatibility Property Page:
  lgpo.set:
  - name: AppCompatRemoveProgramCompatPropPage
  - setting: Enabled
  - policy_class: Machine
