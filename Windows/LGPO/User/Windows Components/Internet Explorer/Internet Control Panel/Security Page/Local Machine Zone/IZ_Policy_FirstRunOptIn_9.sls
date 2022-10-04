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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Local Machine Zone\IZ_Policy_FirstRunOptIn_9.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting controls the first-run response that the user sees on a zone-by-zone basis. When the user encounters a new control that has not previously run in Internet Explorer, he or she may be prompted to approve the control. This policy setting determines whether the user is prompted.
# 
# If you enable this policy setting, the first-run prompt is turned off in the corresponding zone.
# 
# If you disable this policy setting, the first-run prompt is turned on in the corresponding zone.
# 
# If you do not configure this policy setting, the first-run prompt is turned on by default.
Turn off first-run prompt:
  lgpo.set:
  - name: IZ_Policy_FirstRunOptIn_9
  - setting:
      IZ_Partname1208: enum-placeholder
  - policy_class: User
