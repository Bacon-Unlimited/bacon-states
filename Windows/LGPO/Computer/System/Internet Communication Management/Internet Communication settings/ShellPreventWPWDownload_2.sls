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
# LOCATION: \Computer\System\Internet Communication Management\Internet Communication settings\ShellPreventWPWDownload_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNET
#
# This policy setting specifies whether Windows should download a list of providers for the web publishing and online ordering wizards.
# 
# These wizards allow users to select from a list of companies that provide services such as online storage and photographic printing. By default, Windows displays providers downloaded from a Windows website in addition to providers specified in the registry.
# 
# If you enable this policy setting, Windows does not download providers, and only the service providers that are cached in the local registry are displayed.
# 
# If you disable or do not configure this policy setting, a list of providers are downloaded when the user uses the web publishing or online ordering wizards.
# 
# See the documentation for the web publishing and online ordering wizards for more information, including details on specifying service providers in the registry.
Turn off Internet download for Web publishing and online ordering wizards:
  lgpo.set:
  - name: ShellPreventWPWDownload_2
  - setting: Enabled
  - policy_class: Machine
