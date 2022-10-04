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
# LOCATION: \User\Windows Components\Attachment Manager\AM_SetModRiskInclusion.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting allows you to configure the list of moderate-risk file types. If the attachment is in the list of moderate-risk file types and is from the restricted or Internet zone, Windows prompts the user before accessing the file. This inclusion list overrides the list of potentially high-risk file types built into Windows and it takes precedence over the low-risk inclusion list but has a lower precedence than the high-risk inclusion list (where an extension is listed in more than one inclusion list).
# 
# If you enable this policy setting, you can specify file types which pose a moderate risk.
# 
# If you disable this policy setting, Windows uses its default trust logic.
# 
# If you do not configure this policy setting, Windows uses its default trust logic.
Inclusion list for moderate risk file types:
  lgpo.set:
  - name: AM_SetModRiskInclusion
  - setting:
      AM_InstructModRiskInclusionList: text-placeholder
  - policy_class: User
