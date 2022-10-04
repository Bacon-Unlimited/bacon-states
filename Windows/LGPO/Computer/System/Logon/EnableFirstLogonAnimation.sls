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
# LOCATION: \Computer\System\Logon\EnableFirstLogonAnimation.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to control whether users see the first sign-in animation when signing in to the computer for the first time.  This applies to both the first user of the computer who completes the initial setup and users who are added to the computer later.  It also controls if Microsoft account users will be offered the opt-in prompt for services during their first sign-in.
# 
# If you enable this policy setting, Microsoft account users will see the opt-in prompt for services, and users with other accounts will see the sign-in animation.
# 
# If you disable this policy setting, users will not see the animation and Microsoft account users will not see the opt-in prompt for services.
# 
# If you do not configure this policy setting, the user who completes the initial Windows setup will see the animation during their first sign-in. If the first user had already completed the initial setup and this policy setting is not configured, users new to this computer will not see the animation.
# 
#         Note: The first sign-in animation will not be shown on Server, so this policy will have no effect.
#       
'Show first sign-in animation ':
  lgpo.set:
  - name: EnableFirstLogonAnimation
  - setting: Enabled
  - policy_class: Machine
