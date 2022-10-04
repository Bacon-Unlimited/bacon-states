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
# LOCATION: \Computer\Windows Components\Windows Installer\DisableAutomaticApplicationShutdown.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_MSI40
#
# This policy setting controls Windows Installer's interaction with the Restart Manager. The Restart Manager API can eliminate or reduce the number of system restarts that are required to complete an installation or update.
# 
# If you enable this policy setting, you can use the options in the Prohibit Use of Restart Manager box to control file in use detection behavior.
# 
# -- The "Restart Manager On" option instructs Windows Installer to use Restart Manager to detect files in use and mitigate a system restart, when possible.
# 
# -- The "Restart Manager Off" option turns off Restart Manager for file in use detection and the legacy file in use behavior is used.
# 
# -- The "Restart Manager Off for Legacy App Setup" option applies to packages that were created for Windows Installer versions lesser than 4.0. This option lets those packages display the legacy files in use UI while still using Restart Manager for detection.
# 
# If you disable or do not configure this policy setting, Windows Installer will use Restart Manager to detect files in use and mitigate a system restart, when possible.
Prohibit use of Restart Manager:
  lgpo.set:
  - name: DisableAutomaticApplicationShutdown
  - setting:
      DisableAutomaticApplicationShutdown: enum-placeholder
  - policy_class: Machine
