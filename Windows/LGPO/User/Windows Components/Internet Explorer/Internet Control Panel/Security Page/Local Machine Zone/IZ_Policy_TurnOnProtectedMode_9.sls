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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Control Panel\Security Page\Local Machine Zone\IZ_Policy_TurnOnProtectedMode_9.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7VISTA
#
# This policy setting allows you to turn on Protected Mode. Protected Mode helps protect Internet Explorer from exploited vulnerabilities by reducing the locations that Internet Explorer can write to in the registry and the file system.
# 
# If you enable this policy setting, Protected Mode is turned on. The user cannot turn off Protected Mode.
# 
# If you disable this policy setting, Protected Mode is turned off. The user cannot turn on Protected Mode.
# 
# If you do not configure this policy setting, the user can turn on or turn off Protected Mode.
Turn on Protected Mode:
  lgpo.set:
  - name: IZ_Policy_TurnOnProtectedMode_9
  - setting:
      IZ_Partname2500: enum-placeholder
  - policy_class: User
