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
# LOCATION: \User\Windows Components\Windows Media Player\PreventCDDVDMetadataRetrieval.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_WMP9
#
# This policy setting allows you to prevent media information for CDs and DVDs from being retrieved from the Internet.
# 
# If you enable this policy setting, the Player is prevented from automatically obtaining media information from the Internet for CDs and DVDs played by users. In addition, the Retrieve media information for CDs and DVDs from the Internet check box on the Privacy Options tab in the first use dialog box and on the Privacy tab in the Player are not selected and are not available.
# 
# If you disable or do not configure this policy setting, users can change the setting of the Retrieve media information for CDs and DVDs from the Internet check box.
Prevent CD and DVD Media Information Retrieval:
  lgpo.set:
  - name: PreventCDDVDMetadataRetrieval
  - setting: Enabled
  - policy_class: User
