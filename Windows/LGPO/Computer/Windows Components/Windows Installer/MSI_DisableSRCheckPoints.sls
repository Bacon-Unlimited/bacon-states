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
# LOCATION: \Computer\Windows Components\Windows Installer\MSI_DisableSRCheckPoints.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting prevents Windows Installer from creating a System Restore checkpoint each time an application is installed. System Restore enables users, in the event of a problem, to restore their computers to a previous state without losing personal data files.
# 
# If you enable this policy setting, the Windows Installer does not generate System Restore checkpoints when installing applications.
# 
# If you disable or do not configure this policy setting, by default, the Windows Installer automatically creates a System Restore checkpoint each time an application is installed, so that users can restore their computer to the state it was in before installing the application.
Turn off creation of System Restore checkpoints:
  lgpo.set:
  - name: MSI_DisableSRCheckPoints
  - setting: Enabled
  - policy_class: Machine
