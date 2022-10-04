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
# LOCATION: \User\Windows Components\Attachment Manager\AM_SetFileRiskLevel.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting allows you to manage the default risk level for file types. To fully customize the risk level for file attachments, you may also need to configure the trust logic for file attachments.
# 
# High Risk: If the attachment is in the list of high-risk file types and is from the restricted zone, Windows blocks the user from accessing the file. If the file is from the Internet zone, Windows prompts the user before accessing the file.
# 
# Moderate Risk: If the attachment is in the list of moderate-risk file types and is from the restricted or Internet zone, Windows prompts the user before accessing the file.
# 
# Low Risk: If the attachment is in the list of low-risk file types, Windows will not prompt the user before accessing the file, regardless of the file's zone information.
# 
# If you enable this policy setting, you can specify the default risk level for file types.
# 
# If you disable this policy setting, Windows sets the default risk level to moderate.
# 
# If you do not configure this policy setting, Windows sets the default risk level to moderate.
Default risk level for file attachments:
  lgpo.set:
  - name: AM_SetFileRiskLevel
  - setting:
      AM_RiskLevel: enum-placeholder
  - policy_class: User
