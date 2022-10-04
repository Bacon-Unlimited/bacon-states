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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Intranet Zone\IZ_PolicyDisplayMixedContent_3.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE6SP2
#
# This policy setting allows you to manage whether users can display nonsecure items and manage whether users receive a security information message to display pages containing both secure and nonsecure items.
# 
# If you enable this policy setting, and the drop-down box is set to Enable, the user does not receive a security information message (This page contains both secure and nonsecure items. Do you want to display the nonsecure items?) and nonsecure content can be displayed.
# 
# If the drop-down box is set to Prompt, the user will receive the security information message on the Web pages that contain both secure (https://) and nonsecure (http://) content.
# 
# If you disable this policy setting, users cannot receive the security information message and nonsecure content cannot be displayed.
# 
# If you do not configure this policy setting, the user will receive the security information message on the Web pages that contain both secure (https://) and nonsecure (http://) content.
Display mixed content:
  lgpo.set:
  - name: IZ_PolicyDisplayMixedContent_3
  - setting:
      IZ_Partname1609: enum-placeholder
  - policy_class: Machine
