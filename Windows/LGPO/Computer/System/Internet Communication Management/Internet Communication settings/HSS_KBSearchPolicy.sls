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
# LOCATION: \Computer\System\Internet Communication Management\Internet Communication settings\HSS_KBSearchPolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# This policy setting specifies whether users can perform a Microsoft Knowledge Base search from the Help and Support Center.
# 
# The Knowledge Base is an online source of technical support information and self-help tools for Microsoft products, and is searched as part of all Help and Support Center searches with the default search options.
# 
# If you enable this policy setting, it removes the Knowledge Base section from the Help and Support Center "Set search options" page, and only Help content on the local computer is searched. 
# 
# If you disable or do not configure this policy setting, the Knowledge Base is searched if the user has a connection to the Internet and has not disabled the Knowledge Base search from the Search Options page.
Turn off Help and Support Center Microsoft Knowledge Base search:
  lgpo.set:
  - name: HSS_KBSearchPolicy
  - setting: Enabled
  - policy_class: Machine
