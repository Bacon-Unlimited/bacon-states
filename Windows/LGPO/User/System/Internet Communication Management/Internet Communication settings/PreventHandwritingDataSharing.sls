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
# LOCATION: \User\System\Internet Communication Management\Internet Communication settings\PreventHandwritingDataSharing.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# Turns off data sharing from the handwriting recognition personalization tool.
# 
# The handwriting recognition personalization tool tool enables Tablet PC users to adapt handwriting recognition to their own writing style by providing writing samples. The tool can optionally share user writing samples with Microsoft to improve handwriting recognition in future versions of Windows. The tool generates reports and transmits them to Microsoft over a secure connection.
# 
# If you enable this policy, Tablet PC users cannot choose to share writing samples from the handwriting recognition personalization tool with Microsoft.
# 
# If you disable this policy, Tablet PC user writing samples from the handwriting recognition personalization tool will automatically be shared with Microsoft.
# 
# If you do not configure this policy, Tablet PC users can choose whether or not they want to share their writing samples from the handwriting recognition personalization tool with Microsoft.
Turn off handwriting personalization data sharing:
  lgpo.set:
  - name: PreventHandwritingDataSharing
  - setting: Enabled
  - policy_class: User
