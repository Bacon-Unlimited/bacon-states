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
# LOCATION: \Computer\Windows Components\Internet Explorer\Toolbars\DisableToolbarUpgrader.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting allows you to turn off the toolbar upgrade tool. The toolbar upgrade tool determines whether incompatible toolbars or Browser Helper Objects are installed when Internet Explorer starts. If the tool detects an incompatible toolbar, the user is prompted to update or disable the toolbar. Specific toolbars or Browser Helper Objects that are enabled or disabled via policy settings do not undergo this check.
# 
# If you enable this policy setting, the toolbar upgrade tool does not check for incompatible toolbars. The user is not prompted, and incompatible toolbars run unless previously disabled through policy settings or user choice.
# 
# If you disable or do not configure this policy setting, the toolbar upgrade tool checks for incompatible toolbars. The user can enable or disable incompatible toolbars. Toolbars that are enabled or disabled via policy settings do not undergo these checks.
Turn off toolbar upgrade tool:
  lgpo.set:
  - name: DisableToolbarUpgrader
  - setting: Enabled
  - policy_class: Machine
